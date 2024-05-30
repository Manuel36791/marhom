import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/auth/supervisor_register/domain/entities/supervisor_register_step_one_entity.dart';
import 'package:marhom/features/auth/supervisor_register/domain/use_cases/supervisor_register_step_one_use_case.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../core/resources/api/debouncer.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/api/data/models/check_phone_model.dart';
import '../../../../../core/shared/api/domain/entities/check_phone_entity.dart';
import '../../../../../core/shared/api/domain/use_cases/check_phone_use_case.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/supervisor_register_step_one_model.dart';
import '../../data/models/supervisor_register_step_two_model.dart';
import '../../domain/entities/supervisor_register_step_two_entity.dart';
import '../../domain/use_cases/supervisor_register_step_two_use_case.dart';

part 'supervisor_register_states.dart';

part 'supervisor_register_cubit.freezed.dart';

class SupervisorRegisterCubit extends Cubit<SupervisorRegisterStates> {
  SupervisorRegisterCubit({
    required this.registerStepOneUseCase,
    required this.registerStepTwoUseCase,
    required this.checkPhoneUseCase,
  }) : super(const SupervisorRegisterStates.initial());

  static SupervisorRegisterCubit get(context) => BlocProvider.of(context);

  final SupervisorRegisterStepOneUseCase registerStepOneUseCase;

  supervisorRegisterStepOne(
      SupervisorRegisterStepOneModel supervisorRegisterStepOneModel) async {
    emit(const SupervisorRegisterStates.stepOneLoading());

    final result = await registerStepOneUseCase(supervisorRegisterStepOneModel);

    result.fold(
      (l) => emit(
        SupervisorRegisterStates.stepOneFailure(l),
      ),
      (r) => emit(
        SupervisorRegisterStates.stepOneSuccess(r),
      ),
    );
  }

  final SupervisorRegisterStepTwoUseCase registerStepTwoUseCase;

  supervisorRegisterStepTwo(
      SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel) async {
    emit(const SupervisorRegisterStates.stepTwoLoading());

    final result = await registerStepTwoUseCase(supervisorRegisterStepTwoModel);

    result.fold(
      (l) => emit(
        SupervisorRegisterStates.stepTwoFailure(l),
      ),
      (r) => emit(
        SupervisorRegisterStates.stepTwoSuccess(r),
      ),
    );
  }

  final CheckPhoneUseCase checkPhoneUseCase;

  checkUserPhone(CheckPhoneModel checkPhoneModel) async {
    // emit(const UserRegisterStates.loading());
    final result = await checkPhoneUseCase(checkPhoneModel);
    result.fold(
      (l) => emit(SupervisorRegisterStates.checkFailed(l)),
      (r) {
        emit(
          SupervisorRegisterStates.checkSuccess(r),
        );
      },
    );
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

  String dialCode = "+966";
  String countryCode = "SA";

  final firstNameCtrl = BehaviorSubject<String>();
  final lastNameCtrl = BehaviorSubject<String>();
  final phoneCtrl = BehaviorSubject<String>();
  final userNameCtrl = BehaviorSubject<String>();
  final emailCtrl = BehaviorSubject<String>();
  final passCtrl = BehaviorSubject<String>();
  final passConfCtrl = BehaviorSubject<String>();
  final snapChatCtrl = BehaviorSubject<String>();

  Stream<String> get firstNameStream => firstNameCtrl.stream;

  Stream<String> get lastNameStream => lastNameCtrl.stream;

  Stream<String> get phoneStream => phoneCtrl.stream;

  Stream<String> get userNameStream => userNameCtrl.stream;

  Stream<String> get emailStream => emailCtrl.stream;

  Stream<String> get passStream => passCtrl.stream;

  Stream<String> get passConfStream => passConfCtrl.stream;

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

  bool isRegistered = false;
  var debouncer = Debouncer(
    const Duration(milliseconds: 1000),
  );

  validatePhone(String phone) async {
    if (phone.isEmpty) {
      phoneCtrl.sink.addError(S.current.pleaseEnterYourPhoneNumber);
    } else if (!phone.isPhone()) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      phoneCtrl.sink.add(phone);
      debouncer.call(() {
        checkUserPhone(
          CheckPhoneModel(
            phone: phone,
          ),
        );
      });
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

  validatePass(String pass) async {
    if (pass.isEmpty) {
      passCtrl.sink.addError(S.current.pleaseEnterYourPassword);
    } else if (pass.length < 8) {
      passCtrl.sink.addError(S.current.passwordIsTooShort);
    } else {
      passCtrl.sink.add(pass);
    }
  }

  validatePassConfirm(String passConf) async {
    if (passConf.isEmpty) {
      passConfCtrl.sink.addError(S.current.pleaseConfirmYourPassword);
    } else if (passConf != passCtrl.value) {
      passConfCtrl.sink.addError(S.current.passwordsDoNotMatchPleaseTryAgain);
    } else {
      passConfCtrl.sink.add(passConf);
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

  Stream<bool> get registerBtnStream => Rx.combineLatest8(
        firstNameStream,
        lastNameStream,
        userNameCtrl,
        emailStream,
        phoneStream,
        passStream,
        passConfStream,
        snapChatStream,
        (a, b, c, d, e, f, g, h) => true,
      );

  ctrlInitValues(
      String firstName, String lastName, String dialCode, String phone) {
    firstNameCtrl.sink.add(firstName);
    lastNameCtrl.sink.add(lastName);
    phoneCtrl.sink.add("$dialCode$phone");
  }
}
