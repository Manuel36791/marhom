part of 'supervisor_register_cubit.dart';

@freezed
class SupervisorRegisterStates with _$SupervisorRegisterStates {
  const factory SupervisorRegisterStates.initial() = _Initial;
  const factory SupervisorRegisterStates.stepOneLoading() = StepOneLoading;
  const factory SupervisorRegisterStates.stepOneSuccess(final SupervisorRegisterStepOneEntity registerStepOne) = StepOneSuccess ;
  const factory SupervisorRegisterStates.stepOneFailure(final Failure failure) = StepOneFailure;
  const factory SupervisorRegisterStates.stepTwoLoading() = StepTwoLoading;
  const factory SupervisorRegisterStates.stepTwoSuccess(final SupervisorRegisterStepTwoEntity registerStepTwo) = StepTwoSuccess ;
  const factory SupervisorRegisterStates.stepTwoFailure(final Failure failure) = StepTwoFailure;
  const factory SupervisorRegisterStates.checkSuccess(final  CheckPhoneEntity phone) = CheckSuccess ;
  const factory SupervisorRegisterStates.checkFailed(final Failure failure) = CheckFailed;
}
