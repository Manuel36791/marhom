part of 'supervisor_delete_account_cubit.dart';

@freezed
class SupervisorDeleteAccountStates with _$SupervisorDeleteAccountStates {
  const factory SupervisorDeleteAccountStates.initial() = _Initial;
  const factory SupervisorDeleteAccountStates.loading() = Loading;
  const factory SupervisorDeleteAccountStates.success(final SupervisorDeleteAccountEntity deleteAccountEntity) = Success;
  const factory SupervisorDeleteAccountStates.error(final Failure failure) = Error;
}
