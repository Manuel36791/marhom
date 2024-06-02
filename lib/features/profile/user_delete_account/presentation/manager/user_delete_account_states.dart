part of 'user_delete_account_cubit.dart';

@freezed
class UserDeleteAccountStates with _$UserDeleteAccountStates {
  const factory UserDeleteAccountStates.initial() = _Initial;
  const factory UserDeleteAccountStates.loading() = Loading;
  const factory UserDeleteAccountStates.success(final UserDeleteAccountEntity deleteAccountEntity) = Success;
  const factory UserDeleteAccountStates.error(final Failure failure) = Error;
}
