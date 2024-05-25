part of 'onboarding_cubit.dart';

@freezed
class OnboardingStates with _$OnboardingStates {
  const factory OnboardingStates.initial() = _Initial;
  const factory OnboardingStates.languageChanged(final String language) = LanguageChanged;
}
