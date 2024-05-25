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

  static String m0(errCode, err) => "خطأ: ${errCode}، ${err}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "bad_gateway": MessageLookupByLibrary.simpleMessage(
            "بيانات غير صالحة، يرجى المحاولة مرة أخرى"),
        "bad_request_error": MessageLookupByLibrary.simpleMessage(
            "طلب غير صالح. حاول مرة أخرى لاحقًا"),
        "cache_error": MessageLookupByLibrary.simpleMessage(
            "خطأ في ذاكرة التخزين المؤقت , حاول مرة أخرى لاحقًا"),
        "checkInternetConnection": MessageLookupByLibrary.simpleMessage(
            "تأكد من أن هاتفك متصل بالإنترنت"),
        "conflict_error": MessageLookupByLibrary.simpleMessage(
            "تم العثور على تعارض , حاول مرة أخرى لاحقًا"),
        "default_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "error": m0,
        "forbidden_error": MessageLookupByLibrary.simpleMessage(
            "طلب محظور. حاول مرة أخرى لاحقًا"),
        "internal_server_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "marhomUser": MessageLookupByLibrary.simpleMessage("مرحوم (مُستخدم)"),
        "method_not_allowed_error": MessageLookupByLibrary.simpleMessage(
            "غير مدعوم، يرجى المحاولة مرة أخرى لاحقًا"),
        "moved_permanently":
            MessageLookupByLibrary.simpleMessage("هذا الرابط لم يعد متاحًا"),
        "multiple_choices":
            MessageLookupByLibrary.simpleMessage("اختر خيارًا للمتابعة"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("لا يوجد اتصال بالإنترنت"),
        "no_content": MessageLookupByLibrary.simpleMessage("نجاح بدون محتوى"),
        "no_internet_error": MessageLookupByLibrary.simpleMessage(
            "يُرجى التحقق من اتصالك بالإنترنت"),
        "not_found_error": MessageLookupByLibrary.simpleMessage(
            "url غير موجود , حاول مرة أخرى لاحقًا"),
        "payment_required": MessageLookupByLibrary.simpleMessage("الدفع مطلوب"),
        "service_unavailable":
            MessageLookupByLibrary.simpleMessage("الخادم قيد الصيانة"),
        "success": MessageLookupByLibrary.simpleMessage("تم بنجاح"),
        "timeout_error": MessageLookupByLibrary.simpleMessage(
            "انتهت المهلة , حاول مرة أخرى لاحقًا"),
        "unauthorized_error": MessageLookupByLibrary.simpleMessage(
            "المستخدم غير مصرح له، جرب مرة أخرى في وقت لاحق"),
        "unknown_error": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما , حاول مرة أخرى لاحقًا"),
        "yourComsSupervisor":
            MessageLookupByLibrary.simpleMessage("تواصلك (مُشرف)")
      };
}