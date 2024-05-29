part of 'user_register_cubit.dart';

@freezed
class UserRegisterStates with _$UserRegisterStates {
  const factory UserRegisterStates.initial() = _Initial;
  const factory UserRegisterStates.loading() = Loading;
  const factory UserRegisterStates.registerSuccess(final UserRegisterOrLoginEntity register) = RegisterSuccess;
  const factory UserRegisterStates.registerFailure(final Failure failure) = RegisterFailure;
  const factory UserRegisterStates.loginSuccess(final UserRegisterOrLoginEntity login) = LoginSuccess;
  const factory UserRegisterStates.loginFailure(final Failure failure) = LoginFailure;
  const factory UserRegisterStates.checkSuccess(final CheckPhoneEntity  checkPhone) = CheckSuccess;
  const factory UserRegisterStates.checkFailed(final Failure failure) = CheckFailed;
}
