import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'OTPLESS_APP_ID')
  static const String otpLessAppId = _Env.otpLessAppId;
}