import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/supervisor_edit_profile_model.dart';
import '../../domain/entities/supervisor_edit_profile_entity.dart';
import '../../domain/use_cases/supervisor_edit_profile_use_case.dart';

part 'supervisor_edit_profile_states.dart';

part 'supervisor_edit_profile_cubit.freezed.dart';

class SupervisorEditProfileCubit extends Cubit<SupervisorEditProfileStates> {
  SupervisorEditProfileCubit({required this.supervisorEditProfileUseCase})
      : super(const SupervisorEditProfileStates.initial());

  static SupervisorEditProfileCubit get(context) => BlocProvider.of(context);

  File? img;
  String base64 = "";

  void pickPhotoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text("Pick an Option"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomBtn(
                label: "From Gallery",
                onPressed: () {
                  Navigator.pop(context);
                  pickAvatarImage(ImageSource.gallery);
                },
              ),
              Gap(10.h),
              CustomBtn(
                label: "From Camera",
                onPressed: () {
                  Navigator.pop(context);
                  pickAvatarImage(ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future pickAvatarImage(ImageSource imageSource) async {
    try {
      final avatarImage = await ImagePicker().pickImage(source: imageSource);
      if (avatarImage == null) return;
      img = File(avatarImage.path);
      base64 = base64Encode(img!.readAsBytesSync());
      // await uploadAvatar(EditProfileEntity(video64: base64,token: AppConstants.userToken));
      // emit(
      //   EditProfileStates.uploadSuccess(
      //     EditProfileEntity(
      //       avatar: base64,
      //     ),
      //   ),
      // );
    } catch (e) {
      return;
    }
  }

  String currentAvatar = "";

  Future<String> imageToBase64(String imageUrl) async {
    // Fetch the image bytes from the network
    HttpClient httpClient = HttpClient();
    HttpClientRequest request =
        await httpClient.getUrl(Uri.parse("${AppConstants.imageUrl}$imageUrl"));
    HttpClientResponse response = await request.close();
    List<int> imageBytes = await consolidateHttpClientResponseBytes(response);

    // Encode the image bytes to Base64 string
    String base64Image = base64Encode(imageBytes);
    currentAvatar = base64Image;

    return currentAvatar;
  }

  final SupervisorEditProfileUseCase supervisorEditProfileUseCase;

  editProfile(SupervisorEditProfileModel supervisorEditProfileModel) async {
    emit(const SupervisorEditProfileStates.loading());

    final send = await supervisorEditProfileUseCase(supervisorEditProfileModel);

    send.fold(
      (l) => {
        emit(
          SupervisorEditProfileStates.error(l),
        ),
      },
      (r) => {
        emit(
          SupervisorEditProfileStates.success(r),
        ),
      },
    );
  }

  final firstNameCtrl = BehaviorSubject<String>();
  final lastNameCtrl = BehaviorSubject<String>();
  final phoneCtrl = BehaviorSubject<String>();
  final userNameCtrl = BehaviorSubject<String>();
  final emailCtrl = BehaviorSubject<String>();
  final snapChatCtrl = BehaviorSubject<String>();

  Stream<String> get firstNameStream => firstNameCtrl.stream;
  Stream<String> get lastNameStream => lastNameCtrl.stream;
  Stream<String> get phoneStream => phoneCtrl.stream;
  Stream<String> get userNameStream => userNameCtrl.stream;
  Stream<String> get emailStream => emailCtrl.stream;
  Stream<String> get snapChatStream => snapChatCtrl.stream;

  validateFirstName(String firstName) async {
    if (firstName.isEmpty) {
      firstNameCtrl.sink.addError(S.current.pleaseEnterYourFirstName);
    } else {
      firstNameCtrl.sink.add(firstName);
    }
  }

  validateLastName(String lastName) async {
    if (lastName.isEmpty) {
      lastNameCtrl.sink.addError(S.current.pleaseEnterYourLastName);
    } else {
      lastNameCtrl.sink.add(lastName);
    }
  }

  validatePhone(String phone) async {
    if (phone.isEmpty) {
      phoneCtrl.sink.addError(S.current.pleaseEnterYourPhoneNumber);
    } else if (!phone.isPhone()) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      phoneCtrl.sink.add(phone);
    }
  }

  validateUserName(String userName) async {
    final RegExp regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,14}$');

    if (userName.isEmpty) {
      snapChatCtrl.sink.addError(S.current.pleaseChooseAUniqueUsername);
    } else if (!regex.hasMatch(userName)) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterAValidUserName);
    } else {
      snapChatCtrl.sink.add(userName);
    }
  }

  validateEmail(String email) async {
    if (email.isEmpty) {
      emailCtrl.sink.addError(S.current.pleaseEnterYourEmailAddress);
    } else if (!email.isEmail()) {
      emailCtrl.sink.addError(S.current.pleaseEnterAValidEmailAddress);
    } else {
      emailCtrl.sink.add(email);
    }
  }

  validateSnapChatId(String snapchatId) async {
    final RegExp regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,14}$');

    if (snapchatId.isEmpty) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterYourSnapchatId);
    } else if (!regex.hasMatch(snapchatId)) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterAValidSnapchatId);
    } else {
      snapChatCtrl.sink.add(snapchatId);
    }
  }

  Stream<bool> get editProfileBtnStream => Rx.combineLatest(
    [
      firstNameStream,
      lastNameStream,
      userNameCtrl,
      emailStream,
      phoneStream,
      snapChatStream,
    ],
        (value) => true,
  );

}
