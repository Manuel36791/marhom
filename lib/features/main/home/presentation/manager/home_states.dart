part of 'home_cubit.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;
  const factory HomeStates.loading() = Loading;
  const factory HomeStates.prayerSuccess(final PrayerTimes prayerTimes) = Success;
  const factory HomeStates.slidersSuccess(final SlidersResponseEntity sliders) = SlidersSuccess;
  const factory HomeStates.slidersError(final Failure failure) = SlidersError;
}
