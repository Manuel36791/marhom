import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/auth/user_register/domain/entities/user_register_entity.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/user_register_model.dart';
import '../../domain/use_cases/user_register_use_case.dart';

part 'user_register_states.dart';

part 'user_register_cubit.freezed.dart';

class UserRegisterCubit extends Cubit<UserRegisterStates> {
  UserRegisterCubit({required this.userRegisterUseCase}) : super(const UserRegisterStates.initial());

  static UserRegisterCubit get(context) => BlocProvider.of(context);

  final UserRegisterUseCase userRegisterUseCase;

  userRegister(UserRegisterModel userRegisterModel) async {
    emit(const UserRegisterStates.loading());

    final result = await userRegisterUseCase(userRegisterModel);

    result.fold((l) => emit(UserRegisterStates.error(l)),
            (r) => emit(UserRegisterStates.success(r)));
  }

  void displayErrors(Map<String, dynamic> errors, BuildContext context) {
    errors.forEach((key, value) {
      String errorMessage = value.join("\n");
      context.defaultSnackBar(
        S.current.error(key, errorMessage),
        color: AppColors.errorRed,
      );
    });
  }

  final firstNameCtrl = BehaviorSubject<String>();
  final lastNameCtrl = BehaviorSubject<String>();
  final whatsappCtrl = BehaviorSubject<String>();
  final snapChatCtrl = BehaviorSubject<String>();

  Stream<String> get firstNameStream => firstNameCtrl.stream;

  Stream<String> get lastNameStream => lastNameCtrl.stream;

  Stream<String> get whatsappStream => whatsappCtrl.stream;

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

  var dialCode = "+966";

  validateWaNumber(String waNumber) async {
    if (waNumber.isEmpty) {
      whatsappCtrl.sink.addError(S.current.pleaseEnterYourPhoneNumber);
    } else if (!waNumber.isPhone()) {
      whatsappCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      whatsappCtrl.sink.add(waNumber);
    }
  }

  validateSnapChatId(String snapChatId) async {
    final RegExp regex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._]{2,14}$');

    if (snapChatId.isEmpty) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterYourSnapchatId);
    } else if (!regex.hasMatch(snapChatId)) {
      snapChatCtrl.sink.addError(S.current.pleaseEnterAValidSnapchatId);
    } else {
      snapChatCtrl.sink.add(snapChatId);
    }
  }

  Stream<bool> get registerBtnStream => Rx.combineLatest4(
        firstNameStream,
        lastNameStream,
        whatsappStream,
        snapChatStream,
        (a, b, c, d) => true,
      );


}
