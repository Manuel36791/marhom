import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/cache_helper.dart';
import '../../../../main.dart';

part 'onboarding_states.dart';

part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingStates> {
  OnboardingCubit() : super(const OnboardingStates.initial());

  static OnboardingCubit get(context) => BlocProvider.of(context);

  String selectedLanguage = "en";

  changeLanguage(BuildContext context, String language) async {
    selectedLanguage = language;
    if (language == "en") {
      MyApp.setLocale(context, const Locale("en"));
      CacheHelper.changeAppLang("en");
    } else if (language == "ar") {
      MyApp.setLocale(context, const Locale("ar"));
      CacheHelper.changeAppLang("ar");
    }
    emit(OnboardingStates.languageChanged(selectedLanguage));
  }
}
