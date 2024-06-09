part of 'supervisor_basic_info_cubit.dart';

@freezed
class SupervisorBasicInfoState with _$SupervisorBasicInfoState {
  const factory SupervisorBasicInfoState.initial() = _Initial;
  const factory SupervisorBasicInfoState.loading() = Loading;
  const factory SupervisorBasicInfoState.basicInfoSuccess(final SupervisorBasicInfoEntity basicInfo ) = BasicInfoSuccess;
  const factory SupervisorBasicInfoState.basicInfoError(final Failure failure) = BasicInfoError;
  const factory SupervisorBasicInfoState.helpersSuccess(final List<UserData> helpers) = HelpersSuccess;
  const factory SupervisorBasicInfoState.helpersError(final Failure failure) = HelpersError;
  const factory SupervisorBasicInfoState.indexIncreased(final int index) = IndexIncreased;
  const factory SupervisorBasicInfoState.indexDecreased(final int index) = IndexDecreased;
  const factory SupervisorBasicInfoState.indexMaintained(final int index) = IndexMaintained;
}
