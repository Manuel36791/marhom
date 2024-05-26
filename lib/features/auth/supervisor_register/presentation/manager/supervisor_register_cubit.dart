import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../generated/l10n.dart';

part 'supervisor_register_states.dart';

part 'supervisor_register_cubit.freezed.dart';

class SupervisorRegisterCubit extends Cubit<SupervisorRegisterStates> {
  SupervisorRegisterCubit() : super(const SupervisorRegisterStates.initial());

  static SupervisorRegisterCubit get(context) => BlocProvider.of(context);

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

  validatePass(String pass) async {
    if (pass.isEmpty) {
      passCtrl.sink.addError(S.current.pleaseEnterYourPassword);
    } else if (pass.length < 8) {
      passCtrl.sink.addError(
          S.current.passwordIsTooShort);
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
