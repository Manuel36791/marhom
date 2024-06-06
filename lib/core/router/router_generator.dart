import 'package:flutter/material.dart';
import 'package:marhom/features/auth/supervisor_basic_info/presentation/pages/supervisor_basic_info_view.dart';
import 'package:marhom/features/auth/supervisor_login/presentation/pages/supervisor_login_view.dart';
import 'package:marhom/features/auth/verify_account/presentation/pages/verify_view.dart';
import 'package:marhom/features/main/supervisor_home/presentation/pages/mortality_details_view.dart';
import 'package:marhom/features/profile/contacts/presentation/pages/group_view.dart';
import 'package:marhom/features/profile/contacts/presentation/pages/contact_groups_view.dart';
import 'package:marhom/features/profile/supervisor_edit_profile/presentation/pages/supervisor_edit_profile_view.dart';

import '../../features/auth/supervisor_register/presentation/pages/supervisor_phone_register_view.dart';
import '../../features/auth/supervisor_register/presentation/pages/supervisor_register_view.dart';
import '../../features/auth/user_register/presentation/pages/user_register_view.dart';
import '../../features/bottom_nav_bar/bottom_nav_bar.dart';
import '../../features/onboarding/presentation/pages/onboarding_view.dart';
import '../../features/profile/map/presentation/pages/map_view.dart';
import '../../features/profile/send_message/presentation/pages/send_message_view.dart';
import '../../features/profile/user_edit_profile/presentation/pages/user_edit_profile_view.dart';
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
      case verifyAccountView:
        final args = settings.arguments as SupervisorRegisterArguments;
        return MaterialPageRoute(
          builder: (BuildContext context) => VerifyAccountView(
            accountType: args.accountType,
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
            accountType: args.accountType,
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
      case sendMessageView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SendMessageView(),
        );
      case supervisorBasicInfoView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SupervisorBasicInfoView());
      case supervisorEditProfileView:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                const SupervisorEditProfileView());
      case userEditProfileView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UserEditProfileView());

      case supervisorLoginView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SupervisorLoginView());

      case mapView:
        final args = settings.arguments as MapArgs;
        return MaterialPageRoute(
            builder: (BuildContext context) => MapView(
                  location: args.location,
                ));
      case contactGroupsView:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ContactGroupsView());
      case groupView:
        final args = settings.arguments as GroupArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => GroupView(
            groupContacts: args.contacts,
          ),
        );

        case mortalityDetailsView:
        final args = settings.arguments as MortalityDetailsArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => MortalityDetailsView(
            message: args.message,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );
    }
  }
}
