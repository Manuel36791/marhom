part of 'supervisor_login_cubit.dart';

@freezed
class SupervisorLoginStates with _$SupervisorLoginStates {
  const factory SupervisorLoginStates.initial() = _Initial;
  const factory SupervisorLoginStates.loading() = Loading;
  const factory SupervisorLoginStates.success(final SupervisorLoginEntity loginEntity) = Success;
  const factory SupervisorLoginStates.error(final Failure failure) = Error;
}
