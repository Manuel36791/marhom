part of 'supervisor_edit_profile_cubit.dart';

@freezed
class SupervisorEditProfileStates with _$SupervisorEditProfileStates {
  const factory SupervisorEditProfileStates.initial() = _Initial;
  const factory SupervisorEditProfileStates.loading() = Loading;
  const factory SupervisorEditProfileStates.success(final SupervisorEditProfileEntity? editProfileEntity) = Success;
  const factory SupervisorEditProfileStates.uploadSuccess(final SupervisorEditProfileEntity? editProfileEntity) = UploadSuccess;
  const factory SupervisorEditProfileStates.error(Failure failure) = Error;
}
