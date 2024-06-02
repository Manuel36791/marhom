part of 'user_edit_profile_cubit.dart';

@freezed
class UserEditProfileStates with _$UserEditProfileStates {
  const factory UserEditProfileStates.initial() = _Initial;
  const factory UserEditProfileStates.loading() = Loading;
  const factory UserEditProfileStates.success(final UserEditProfileEntity editProfileEntity) = Success;
  const factory UserEditProfileStates.uploadSuccess(final UserEditProfileEntity editProfileEntity) = UploadSuccess;
  const factory UserEditProfileStates.error(final Failure failure) = Error;
}
