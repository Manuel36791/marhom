// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(dialCode, phoneNumber) =>
      "Enter the OTP sent to ${dialCode}${phoneNumber}";

  static String m1(errCode, err) => "Error: ${errCode}, ${err}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "asrt": MessageLookupByLibrary.simpleMessage("Asr"),
        "bad_gateway": MessageLookupByLibrary.simpleMessage(
            "Invalid data, please try again"),
        "bad_request_error": MessageLookupByLibrary.simpleMessage(
            "bad request. try again later"),
        "cache_error": MessageLookupByLibrary.simpleMessage(
            "cache error, try again later"),
        "checkInternetConnection": MessageLookupByLibrary.simpleMessage(
            "Make sure your phone is connected to the Internet"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Confirm your phone number"),
        "conflict_error": MessageLookupByLibrary.simpleMessage(
            "conflict found, try again later"),
        "continueBtn": MessageLookupByLibrary.simpleMessage("Continue"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create New Account"),
        "default_error": MessageLookupByLibrary.simpleMessage(
            "some thing went wrong, try again later"),
        "dhuhrt": MessageLookupByLibrary.simpleMessage("Dhuhr"),
        "didntReceiveTheOtp":
            MessageLookupByLibrary.simpleMessage("Didn\'t receive the OTP?"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "enterOtp": m0,
        "error": m1,
        "fajr": MessageLookupByLibrary.simpleMessage("Fajr"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "forbidden_error": MessageLookupByLibrary.simpleMessage(
            "forbidden request. try again later"),
        "goBack": MessageLookupByLibrary.simpleMessage("Go Back"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "internal_server_error": MessageLookupByLibrary.simpleMessage(
            "some thing went wrong, try again later"),
        "ishat": MessageLookupByLibrary.simpleMessage("Isha"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "maghribt": MessageLookupByLibrary.simpleMessage("Maghrib"),
        "marhom": MessageLookupByLibrary.simpleMessage("Marhom"),
        "marhomUser": MessageLookupByLibrary.simpleMessage("Marhom (User)"),
        "method_not_allowed_error": MessageLookupByLibrary.simpleMessage(
            "Unsupported, please try Again later"),
        "moved_permanently": MessageLookupByLibrary.simpleMessage(
            "This URL is no longer available"),
        "multiple_choices": MessageLookupByLibrary.simpleMessage(
            "Choose an option to continue"),
        "noImageAvailable":
            MessageLookupByLibrary.simpleMessage("No image available"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No Internet Connection"),
        "no_content":
            MessageLookupByLibrary.simpleMessage("success with not content"),
        "no_internet_error": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection"),
        "not_found_error": MessageLookupByLibrary.simpleMessage(
            "url not found, try again later"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordConfirmation":
            MessageLookupByLibrary.simpleMessage("Password Confirmation"),
        "passwordIsTooShort": MessageLookupByLibrary.simpleMessage(
            "Your password is too short. It must be at least 8 characters long"),
        "passwordsDoNotMatchPleaseTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "Passwords do not match. Please try again"),
        "payment_required":
            MessageLookupByLibrary.simpleMessage("Payment Required"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "pleaseChooseAUniqueUsername": MessageLookupByLibrary.simpleMessage(
            "Please choose a unique username"),
        "pleaseConfirmYourPassword": MessageLookupByLibrary.simpleMessage(
            "Please confirm your password"),
        "pleaseEnterAValidEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid email address"),
        "pleaseEnterAValidPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number"),
        "pleaseEnterAValidSnapchatId": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid SnapChat Id"),
        "pleaseEnterAValidUserName": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid user name"),
        "pleaseEnterYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Please enter your email address"),
        "pleaseEnterYourFirstName": MessageLookupByLibrary.simpleMessage(
            "Please enter your first name"),
        "pleaseEnterYourLastName":
            MessageLookupByLibrary.simpleMessage("Please enter your last name"),
        "pleaseEnterYourPassword":
            MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "pleaseEnterYourPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter your phone number"),
        "pleaseEnterYourSnapchatId": MessageLookupByLibrary.simpleMessage(
            "Please enter your SnapChat Id"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "resendOtp": MessageLookupByLibrary.simpleMessage("Resend OTP"),
        "sehrit": MessageLookupByLibrary.simpleMessage("Sehri"),
        "service_unavailable":
            MessageLookupByLibrary.simpleMessage("Server is under maintenance"),
        "snapChatId": MessageLookupByLibrary.simpleMessage("Snap Chat ID"),
        "success": MessageLookupByLibrary.simpleMessage("success"),
        "sunriset": MessageLookupByLibrary.simpleMessage("Sunrise"),
        "supervisor": MessageLookupByLibrary.simpleMessage("(Supervisor)"),
        "tahajjudt": MessageLookupByLibrary.simpleMessage("Tahajjud"),
        "timeout_error":
            MessageLookupByLibrary.simpleMessage("time out, try again late"),
        "unauthorized_error": MessageLookupByLibrary.simpleMessage(
            "user unauthorized, try again later"),
        "unknown_error": MessageLookupByLibrary.simpleMessage(
            "some thing went wrong, try again later"),
        "unprocessable_content_error": MessageLookupByLibrary.simpleMessage(
            "unprocessable data, check it and try again"),
        "user": MessageLookupByLibrary.simpleMessage("(User)"),
        "welcomeToYourCommunications": MessageLookupByLibrary.simpleMessage(
            "Welcome to your communications"),
        "whatsappNumber":
            MessageLookupByLibrary.simpleMessage("Whatsapp Number"),
        "yourComsSupervisor":
            MessageLookupByLibrary.simpleMessage("Your Coms (Supervisor)")
      };
}
