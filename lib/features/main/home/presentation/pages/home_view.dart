import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/home_cubit.dart';
import '../widgets/home_slider.dart';
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
        listener: (context, state) {
          HomeCubit homeCubit = HomeCubit.get(context);
          state.maybeWhen(
            prayerSuccess: (state) {
              AppConstants.prayerTimes = state;
              homeCubit.getSliders();
            },
            orElse: () {},
          );
        },
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
                    prayerSuccess: (state) {
                      return Column(
                        children: [
                          PrayersContainer(
                            prayerIcon: AppImages.fajrPng,
                            prayerName: S.of(context).fajr,
                            prayerStartTime: state.fajrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.sunrisePng,
                            prayerName: S.of(context).sunriset,
                            prayerStartTime: state.sunrise!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.dhuhrPng,
                            prayerName: S.of(context).dhuhrt,
                            prayerStartTime: state.dhuhrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.asrPng,
                            prayerName: S.of(context).asrt,
                            prayerStartTime: state.asrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.sunsetPng,
                            prayerName: S.of(context).maghribt,
                            prayerStartTime: state.maghribStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.ishaPng,
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
                    slidersSuccess: (state) {
                      return Column(
                        children: [
                          HomeSlider(
                            sliders: state.data!,
                          ),
                          PrayersContainer(
                            prayerIcon: AppImages.fajrPng,
                            prayerName: S.of(context).fajr,
                            prayerStartTime:
                                AppConstants.prayerTimes!.fajrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.sunrisePng,
                            prayerName: S.of(context).sunriset,
                            prayerStartTime: AppConstants.prayerTimes!.sunrise!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.dhuhrPng,
                            prayerName: S.of(context).dhuhrt,
                            prayerStartTime:
                                AppConstants.prayerTimes!.dhuhrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.asrPng,
                            prayerName: S.of(context).asrt,
                            prayerStartTime:
                                AppConstants.prayerTimes!.asrStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.sunsetPng,
                            prayerName: S.of(context).maghribt,
                            prayerStartTime:
                                AppConstants.prayerTimes!.maghribStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerIcon: AppImages.ishaPng,
                            prayerName: S.of(context).ishat,
                            prayerStartTime:
                                AppConstants.prayerTimes!.ishaStartTime!,
                          ),
                          Gap(15.h),
                          PrayersContainer(
                            prayerName: S.of(context).tahajjudt,
                            prayerStartTime:
                                AppConstants.prayerTimes!.tahajjudEndTime!,
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
