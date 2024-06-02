import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marhom/core/shared/models/user_data_model_utils.dart';
import 'package:marhom/core/utils/app_text_styles.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../supervisor_edit_profile/presentation/widgets/image_picker_button.dart';
import '../../data/models/user_edit_profile_model.dart';
import '../../domain/entities/user_edit_profile_entity.dart';
import '../../domain/use_cases/user_edit_profile_use_case.dart';

part 'user_edit_profile_states.dart';

part 'user_edit_profile_cubit.freezed.dart';

class UserEditProfileCubit extends Cubit<UserEditProfileStates> {
  UserEditProfileCubit({required this.userEditProfileUseCase})
      : super(const UserEditProfileStates.initial());

  static UserEditProfileCubit get(context) => BlocProvider.of(context);

  File? img;
  String base64 = "";

  // void pickPhotoDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //         title: const Text("Pick an Option"),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             CustomBtn(
  //               label: "From Gallery",
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 pickAvatarImage(ImageSource.gallery);
  //               },
  //             ),
  //             Gap(10.h),
  //             CustomBtn(
  //               label: "From Camera",
  //               onPressed: () {
  //                 Navigator.pop(context);
  //                 pickAvatarImage(ImageSource.camera);
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
  //
  void pickPhotoDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.p16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Upload Image",
                style: CustomTextStyle.kTextStyleF16,
              ),
              Gap(10.h),
              ImagePickerBtn(
                icon: MdiIcons.imageMultiple,
                label: "From Gallery",
                onTap: () {
                  pickAvatarImage(ImageSource.gallery);
                  context.pop();
                },
              ),
              Gap(10.h),
              ImagePickerBtn(
                icon: MdiIcons.camera,
                label: "From Camera",
                onTap: () {
                  pickAvatarImage(ImageSource.camera);
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickAvatarImage(ImageSource imageSource) async {
    try {
      final avatarImage = await ImagePicker().pickImage(source: imageSource);
      if (avatarImage == null) return;
      img = File(avatarImage.path);
      base64 = base64Encode(img!.readAsBytesSync());
      emit(
        UserEditProfileStates.uploadSuccess(
          UserEditProfileEntity(
            avatar: base64,
          ),
        ),
      );
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

  final UserEditProfileUseCase userEditProfileUseCase;

  editProfile(UserEditProfileModel userEditProfileModel) async {
    emit(const UserEditProfileStates.loading());

    final send = await userEditProfileUseCase(userEditProfileModel);

    send.fold(
      (l) => {
        emit(
          UserEditProfileStates.error(l),
        ),
      },
      (r) => {
        emit(
          UserEditProfileStates.success(r),
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

  Stream<String> get snapChatStream => snapChatCtrl.stream;

  userData() async {
    firstNameCtrl.sink.add(UserDataUtils.instance!.firstName!);
    lastNameCtrl.sink.add(UserDataUtils.instance!.lastName!);
    phoneCtrl.sink.add(UserDataUtils.instance!.phone!);
    snapChatCtrl.sink.add(UserDataUtils.instance!.snapChatId!);
  }

  @override
  Future<void> close() {
    firstNameCtrl.close();
    lastNameCtrl.close();
    phoneCtrl.close();
    snapChatCtrl.close();
    return super.close();
  }

  changeFirstName(String firstName) {
    firstNameCtrl.sink.add(firstName);
  }

  changeLastName(String lastName) {
    lastNameCtrl.sink.add(lastName);
  }

  changePhone(String phone) {
    if (!phone.isPhone()) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      phoneCtrl.sink.add(phone);
    }
  }

  changeSnapchatId(String snapChatId) {
    snapChatCtrl.sink.add(snapChatId);
  }

  Stream<bool> get editProfileBtnStream => Rx.combineLatest(
        [
          firstNameStream,
          lastNameStream,
          phoneStream,
          snapChatStream,
        ],
        (value) => true,
      );
}
