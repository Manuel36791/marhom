import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/home_cubit.dart';
import '../widgets/prayers_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<HomeCubit>()..getPrayerTimes(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          HomeCubit homeCubit = HomeCubit.get(context);
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: SingleChildScrollView(
                  child: state.maybeWhen(
                    loading: () {
                      return const StateLoadingWidget();
                    },
                    success: (state) {
                      return Column(
                        children: [
                          PrayersContainer(
                            prayerName: S.of(context).fajr,
                            prayerStartTime: state.fajrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).sunriset,
                            prayerStartTime: state.sunrise!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).dhuhrt,
                            prayerStartTime: state.dhuhrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).asrt,
                            prayerStartTime: state.asrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).maghribt,
                            prayerStartTime: state.maghribStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).ishat,
                            prayerStartTime: state.ishaStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).tahajjudt,
                            prayerStartTime: state.tahajjudEndTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).sehrit,
                            prayerStartTime: homeCubit.prayerTimes!.sehri!,
                          ),
                          Gap(15.h),
                        ],
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
