import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/shared/cubits/internet_checker_cubit.dart';
import 'core/shared/widgets/no_internet_widget.dart';
import 'features/onboarding/presentation/pages/onboarding_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: BlocConsumer<InternetCubit, InternetStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return state == InternetStates.lost
              ? const NoInternetWidget()
              : const OnBoardingView();
        },
      ),
    );
  }
}
