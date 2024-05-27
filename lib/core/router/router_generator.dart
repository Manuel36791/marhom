import 'package:flutter/material.dart';

import '../../features/auth/supervisor_register/presentation/pages/supervisor_phone_confirmation_view.dart';
import '../../features/auth/supervisor_register/presentation/pages/supervisor_phone_register_view.dart';
import '../../features/auth/supervisor_register/presentation/pages/supervisor_register_view.dart';
import '../../features/auth/user_register/presentation/pages/user_register_view.dart';
import '../../features/bottom_nav_bar/bottom_nav_bar.dart';
import '../../features/onboarding/presentation/pages/onboarding_view.dart';
import '../../main_view.dart';
import '../shared/arguments.dart';
import 'router.dart';

class AppRouters {
  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case onboardingView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingView(),
        );
      case supervisorPhoneRegisterView:
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              const SupervisorPhoneRegisterView(),
        );
      case supervisorPhoneConfView:
        final args = settings.arguments as SupervisorRegisterArguments;
        return MaterialPageRoute(
          builder: (BuildContext context) => SupervisorPhoneConfView(
            firstName: args.firstName,
            lastName: args.lastName,
            dialCode: args.dialCode,
            phoneNumber: args.phoneNumber,
            countryCode: args.countryCode,
          ),
        );
      case supervisorRegisterView:
        final args = settings.arguments as SupervisorRegisterArguments;
        return MaterialPageRoute(
          builder: (BuildContext context) => SupervisorRegisterView(
            firstName: args.firstName,
            lastName: args.lastName,
            dialCode: args.dialCode,
            phoneNumber: args.phoneNumber,
            countryCode: args.countryCode,
          ),
        );
      case userRegisterView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UserRegisterView());
      case bottomNavbar:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BottomNavBar());

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );
    }
  }
}
