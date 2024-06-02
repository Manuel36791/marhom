class AppConstants {
  static RegExp emailRegExp = RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
  static RegExp passRegExp = RegExp(r"(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\\$&*~]).{8,}");
  static RegExp phoneRegExp = RegExp(r"(?:[+0][1-9])?[0-9]{9,12}");

  //? Consts for language manager
  static const arabic = "ar";
  static const english = "en";
  static const prefsLangKey = "prefsLangKey";

  // * Main UI constants
  static const mainFontFamily = "Cocon Pro";
  static const subFontFamily = "";
  static const unknownStringValue = "UNKNOWN STRING VALUE";
  static const unknownNumValue = 2077;

  //! API headers
  static const String applicationJson = "application/json";
  static const String bearerToken = "";
  static const apiToken = "Bearer $bearerToken";
  static const apiTimeOut = 60000;
  static String? fcmToken = "";
  static String? userToken = "";

  // * API URIs
  static const apiBaseUrl = "https://crm.coddiv.com/api/";
  static const imageUrl = "https://crm.coddiv.com/";
  static const checkPhoneUri = "auth/check-phone-exist";
  static const userRegisterUri = "auth/users/register";
  static const userLoginUri = "auth/users/login";
  static const supervisorRegisterStepOneUri = "auth/supervisors/register/step1";
  static const supervisorRegisterStepTwoUri = "auth/supervisors/register/step2";
  static const supervisorBasicInfoUri = "V1/basic-information/store";
  static const supervisorEditProfileUri = "auth/supervisors/update-profile";
  static const supervisorDeleteAccountUri = "auth/supervisors/destroy";
  static const userDeleteAccountUri = "auth/users/destroy";
  static const userEditProfileUri = "api/auth/users/update-profile";
  static const supervisorLoginUri = "auth/login";

}