part of 'contact_us_cubit.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState.initial() = _Initial;
  const factory ContactUsState.loading() = Loading;
  const factory ContactUsState.success(final ContactUsEntity contactUs) = Success;
  const factory ContactUsState.error(final Failure failure) = Error;
}
