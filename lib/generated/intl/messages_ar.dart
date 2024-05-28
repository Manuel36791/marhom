// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(dialCode, phoneNumber) =>
      "أدخل رمز OTP المرسل إلى ${dialCode}${phoneNumber}";

  static String m1(errCode, err) => "خطأ: ${errCode}، ${err}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("هل لديك حساب بالفعل؟"),
        "asrt": MessageLookupByLibrary.simpleMessage("العصر"),
        "bad_gateway": MessageLookupByLibrary.simpleMessage(
            "بيانات غير صالحة، يرجى المحاولة مرة أخرى"),
        "bad_request_error": MessageLookupByLibrary.simpleMessage(
            "طلب غير صالح. حاول مرة أخرى لاحقًا"),
        "cache_error": MessageLookupByLibrary.simpleMessage(
            "خطأ في ذاكرة التخزين المؤقت , حاول مرة أخرى لاحقًا"),
        "checkInternetConnection": MessageLookupByLibrary.simpleMessage(
            "تأكد من أن هاتفك متصل بالإنترنت"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("تأكيد رقم هاتفك"),
        "conflict_error": MessageLookupByLibrary.simpleMessage(
            "تم العثور على تعارض , حاول مرة أخرى لاحقًا"),
        "continueBtn": MessageLookupByLibrary.simpleMessage("متابعة"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
        "default_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "dhuhrt": MessageLookupByLibrary.simpleMessage("الظهر"),
        "didntReceiveTheOtp":
            MessageLookupByLibrary.simpleMessage("لم تستلم رمز OTP؟"),
        "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "enterOtp": m0,
        "error": m1,
        "fajr": MessageLookupByLibrary.simpleMessage("الفجر"),
        "firstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
        "forbidden_error": MessageLookupByLibrary.simpleMessage(
            "طلب محظور. حاول مرة أخرى لاحقًا"),
        "goBack": MessageLookupByLibrary.simpleMessage("الرجوع"),
        "home": MessageLookupByLibrary.simpleMessage("الصفحة الرئيسية"),
        "internal_server_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "ishat": MessageLookupByLibrary.simpleMessage("العشاء"),
        "lastName": MessageLookupByLibrary.simpleMessage("الاسم الأخير"),
        "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "maghribt": MessageLookupByLibrary.simpleMessage("المغرب"),
        "marhom": MessageLookupByLibrary.simpleMessage("مرحوم"),
        "marhomUser": MessageLookupByLibrary.simpleMessage("مرحوم (مُستخدم)"),
        "method_not_allowed_error": MessageLookupByLibrary.simpleMessage(
            "غير مدعوم، يرجى المحاولة مرة أخرى لاحقًا"),
        "moved_permanently":
            MessageLookupByLibrary.simpleMessage("هذا الرابط لم يعد متاحًا"),
        "multiple_choices":
            MessageLookupByLibrary.simpleMessage("اختر خيارًا للمتابعة"),
        "noImageAvailable":
            MessageLookupByLibrary.simpleMessage("لا توجد صورة متاحة"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
        "no_content": MessageLookupByLibrary.simpleMessage("نجاح بدون محتوى"),
        "no_internet_error": MessageLookupByLibrary.simpleMessage(
            "يُرجى التحقق من اتصالك بالإنترنت"),
        "not_found_error": MessageLookupByLibrary.simpleMessage(
            "url غير موجود , حاول مرة أخرى لاحقًا"),
        "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "passwordConfirmation":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "passwordIsTooShort": MessageLookupByLibrary.simpleMessage(
            "كلمة المرور قصيرة جدًا. يجب أن تكون على الأقل 8 أحرف"),
        "passwordsDoNotMatchPleaseTryAgain":
            MessageLookupByLibrary.simpleMessage(
                "كلمات المرور غير متطابقة. يرجى المحاولة مرة أخرى"),
        "payment_required": MessageLookupByLibrary.simpleMessage("الدفع مطلوب"),
        "phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "pleaseChooseAUniqueUsername":
            MessageLookupByLibrary.simpleMessage("يرجى اختيار اسم مستخدم فريد"),
        "pleaseConfirmYourPassword":
            MessageLookupByLibrary.simpleMessage("يرجى تأكيد كلمة المرور"),
        "pleaseEnterAValidEmailAddress": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال عنوان بريد إلكتروني صالح"),
        "pleaseEnterAValidPhoneNumber":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رقم هاتف صالح"),
        "pleaseEnterAValidSnapchatId": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال معرف سناب شات صالح"),
        "pleaseEnterAValidUserName":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال اسم مستخدم صالح"),
        "pleaseEnterYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال عنوان بريدك الإلكتروني"),
        "pleaseEnterYourFirstName":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال اسمك الأول"),
        "pleaseEnterYourLastName":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال اسمك الأخير"),
        "pleaseEnterYourPassword":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال كلمة المرور"),
        "pleaseEnterYourPhoneNumber":
            MessageLookupByLibrary.simpleMessage("يرجى إدخال رقم هاتفك"),
        "pleaseEnterYourSnapchatId": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال معرف سناب شات الخاص بك"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "resendOtp":
            MessageLookupByLibrary.simpleMessage("إعادة إرسال رمز OTP"),
        "sehrit": MessageLookupByLibrary.simpleMessage("السحور"),
        "service_unavailable":
            MessageLookupByLibrary.simpleMessage("الخادم قيد الصيانة"),
        "snapChatId": MessageLookupByLibrary.simpleMessage("معرف سناب شات"),
        "success": MessageLookupByLibrary.simpleMessage("تم بنجاح"),
        "sunriset": MessageLookupByLibrary.simpleMessage("الشروق"),
        "supervisor": MessageLookupByLibrary.simpleMessage("(مشرف)"),
        "tahajjudt": MessageLookupByLibrary.simpleMessage("التهجد"),
        "timeout_error": MessageLookupByLibrary.simpleMessage(
            "انتهت المهلة , حاول مرة أخرى لاحقًا"),
        "unauthorized_error": MessageLookupByLibrary.simpleMessage(
            "المستخدم غير مصرح له، جرب مرة أخرى في وقت لاحق"),
        "unknown_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "welcomeToYourCommunications":
            MessageLookupByLibrary.simpleMessage("مرحبًا بك في تواصلك"),
        "yourComsSupervisor":
            MessageLookupByLibrary.simpleMessage("تواصلك (مُشرف)")
      };
}
