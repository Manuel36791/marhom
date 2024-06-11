part of 'about_us_cubit.dart';

@freezed
class AboutUsStates with _$AboutUsStates {
  const factory AboutUsStates.initial() = _Initial;
  const factory AboutUsStates.loading() = Loading;
  const factory AboutUsStates.success(final AboutUsEntity aboutUs) = Success;
  const factory AboutUsStates.error(final Failure failure) = Error;
}
