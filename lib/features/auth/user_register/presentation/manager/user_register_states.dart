part of 'user_register_cubit.dart';

@freezed
class UserRegisterStates with _$UserRegisterStates {
  const factory UserRegisterStates.initial() = _Initial;
  const factory UserRegisterStates.loading() = Loading;
  const factory UserRegisterStates.success(final UserRegisterEntity register) = Success;
  const factory UserRegisterStates.error(final Failure failure) = Error;
  const factory UserRegisterStates.checkSuccess(final CheckPhoneEntity  checkPhone) = CheckSuccess;
  const factory UserRegisterStates.checkFailed(final Failure failure) = CheckFailed;
}
