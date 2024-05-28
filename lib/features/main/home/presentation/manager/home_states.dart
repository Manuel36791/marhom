part of 'home_cubit.dart';

@freezed
class HomeStates with _$HomeStates {
  const factory HomeStates.initial() = _Initial;
  const factory HomeStates.loading() = Loading;
  const factory HomeStates.success(final PrayerTimes prayerTimes) = Success;
}
