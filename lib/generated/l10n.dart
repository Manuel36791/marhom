// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `bad request. try again later`
  String get bad_request_error {
    return Intl.message(
      'bad request. try again later',
      name: 'bad_request_error',
      desc: '',
      args: [],
    );
  }

  /// `success with not content`
  String get no_content {
    return Intl.message(
      'success with not content',
      name: 'no_content',
      desc: '',
      args: [],
    );
  }

  /// `Choose an option to continue`
  String get multiple_choices {
    return Intl.message(
      'Choose an option to continue',
      name: 'multiple_choices',
      desc: '',
      args: [],
    );
  }

  /// `This URL is no longer available`
  String get moved_permanently {
    return Intl.message(
      'This URL is no longer available',
      name: 'moved_permanently',
      desc: '',
      args: [],
    );
  }

  /// `forbidden request. try again later`
  String get forbidden_error {
    return Intl.message(
      'forbidden request. try again later',
      name: 'forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `user unauthorized, try again later`
  String get unauthorized_error {
    return Intl.message(
      'user unauthorized, try again later',
      name: 'unauthorized_error',
      desc: '',
      args: [],
    );
  }

  /// `Payment Required`
  String get payment_required {
    return Intl.message(
      'Payment Required',
      name: 'payment_required',
      desc: '',
      args: [],
    );
  }

  /// `unprocessable data, check it and try again`
  String get unprocessable_content_error {
    return Intl.message(
      'unprocessable data, check it and try again',
      name: 'unprocessable_content_error',
      desc: '',
      args: [],
    );
  }

  /// `Invalid data, please try again`
  String get bad_gateway {
    return Intl.message(
      'Invalid data, please try again',
      name: 'bad_gateway',
      desc: '',
      args: [],
    );
  }

  /// `Server is under maintenance`
  String get service_unavailable {
    return Intl.message(
      'Server is under maintenance',
      name: 'service_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `url not found, try again later`
  String get not_found_error {
    return Intl.message(
      'url not found, try again later',
      name: 'not_found_error',
      desc: '',
      args: [],
    );
  }

  /// `conflict found, try again later`
  String get conflict_error {
    return Intl.message(
      'conflict found, try again later',
      name: 'conflict_error',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get internal_server_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'internal_server_error',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get unknown_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `time out, try again late`
  String get timeout_error {
    return Intl.message(
      'time out, try again late',
      name: 'timeout_error',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get default_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'default_error',
      desc: '',
      args: [],
    );
  }

  /// `cache error, try again later`
  String get cache_error {
    return Intl.message(
      'cache error, try again later',
      name: 'cache_error',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get no_internet_error {
    return Intl.message(
      'Please check your internet connection',
      name: 'no_internet_error',
      desc: '',
      args: [],
    );
  }

  /// `Unsupported, please try Again later`
  String get method_not_allowed_error {
    return Intl.message(
      'Unsupported, please try Again later',
      name: 'method_not_allowed_error',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternetConnection {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Make sure your phone is connected to the Internet`
  String get checkInternetConnection {
    return Intl.message(
      'Make sure your phone is connected to the Internet',
      name: 'checkInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Error: {errCode}, {err}`
  String error(String errCode, String err) {
    return Intl.message(
      'Error: $errCode, $err',
      name: 'error',
      desc: '',
      args: [errCode, err],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get passwordConfirmation {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Snap Chat ID`
  String get snapChatId {
    return Intl.message(
      'Snap Chat ID',
      name: 'snapChatId',
      desc: '',
      args: [],
    );
  }

  /// `Marhom (User)`
  String get marhomUser {
    return Intl.message(
      'Marhom (User)',
      name: 'marhomUser',
      desc: '',
      args: [],
    );
  }

  /// `Your Coms (Supervisor)`
  String get yourComsSupervisor {
    return Intl.message(
      'Your Coms (Supervisor)',
      name: 'yourComsSupervisor',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to your communications`
  String get welcomeToYourCommunications {
    return Intl.message(
      'Welcome to your communications',
      name: 'welcomeToYourCommunications',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `(Supervisor)`
  String get supervisor {
    return Intl.message(
      '(Supervisor)',
      name: 'supervisor',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueBtn {
    return Intl.message(
      'Continue',
      name: 'continueBtn',
      desc: '',
      args: [],
    );
  }

  /// `Go Back`
  String get goBack {
    return Intl.message(
      'Go Back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Marhom`
  String get marhom {
    return Intl.message(
      'Marhom',
      name: 'marhom',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your phone number`
  String get confirmYourPhoneNumber {
    return Intl.message(
      'Confirm your phone number',
      name: 'confirmYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to {dialCode}{phoneNumber}`
  String enterOtp(String dialCode, String phoneNumber) {
    return Intl.message(
      'Enter the OTP sent to $dialCode$phoneNumber',
      name: 'enterOtp',
      desc: '',
      args: [dialCode, phoneNumber],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the OTP?`
  String get didntReceiveTheOtp {
    return Intl.message(
      'Didn\'t receive the OTP?',
      name: 'didntReceiveTheOtp',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resendOtp {
    return Intl.message(
      'Resend OTP',
      name: 'resendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your first name`
  String get pleaseEnterYourFirstName {
    return Intl.message(
      'Please enter your first name',
      name: 'pleaseEnterYourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your last name`
  String get pleaseEnterYourLastName {
    return Intl.message(
      'Please enter your last name',
      name: 'pleaseEnterYourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get pleaseEnterYourPhoneNumber {
    return Intl.message(
      'Please enter your phone number',
      name: 'pleaseEnterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterAValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterAValidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please choose a unique username`
  String get pleaseChooseAUniqueUsername {
    return Intl.message(
      'Please choose a unique username',
      name: 'pleaseChooseAUniqueUsername',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid user name`
  String get pleaseEnterAValidUserName {
    return Intl.message(
      'Please enter a valid user name',
      name: 'pleaseEnterAValidUserName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address`
  String get pleaseEnterYourEmailAddress {
    return Intl.message(
      'Please enter your email address',
      name: 'pleaseEnterYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get pleaseEnterAValidEmailAddress {
    return Intl.message(
      'Please enter a valid email address',
      name: 'pleaseEnterAValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your password is too short. It must be at least 8 characters long`
  String get passwordIsTooShort {
    return Intl.message(
      'Your password is too short. It must be at least 8 characters long',
      name: 'passwordIsTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get pleaseConfirmYourPassword {
    return Intl.message(
      'Please confirm your password',
      name: 'pleaseConfirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match. Please try again`
  String get passwordsDoNotMatchPleaseTryAgain {
    return Intl.message(
      'Passwords do not match. Please try again',
      name: 'passwordsDoNotMatchPleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your SnapChat Id`
  String get pleaseEnterYourSnapchatId {
    return Intl.message(
      'Please enter your SnapChat Id',
      name: 'pleaseEnterYourSnapchatId',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid SnapChat Id`
  String get pleaseEnterAValidSnapchatId {
    return Intl.message(
      'Please enter a valid SnapChat Id',
      name: 'pleaseEnterAValidSnapchatId',
      desc: '',
      args: [],
    );
  }

  /// `(User)`
  String get user {
    return Intl.message(
      '(User)',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Whatsapp Number`
  String get whatsappNumber {
    return Intl.message(
      'Whatsapp Number',
      name: 'whatsappNumber',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
