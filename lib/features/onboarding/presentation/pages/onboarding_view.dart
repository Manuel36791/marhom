import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/shared/widgets/custom_button.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/dimensions.dart';
import '../../../../generated/l10n.dart';
import '../manager/onboarding_cubit.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: BlocBuilder<OnboardingCubit, OnboardingStates>(
        builder: (context, state) {
          OnboardingCubit onboardingCubit = OnboardingCubit.get(context);
          return Scaffold(
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.bgImg),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: AppColors.secondaryWhite.withOpacity(0.6),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(Dimensions.p16),
                    child: Column(
                      children: [
                        Gap(50.h),
                        Center(
                          child: DropdownButton<String>(
                            value: onboardingCubit.selectedLanguage,
                            items: [
                              DropdownMenuItem(
                                value: "en",
                                child: Row(
                                  children: [
                                    const Text("English"),
                                    Gap(5.w),
                                  ],
                                ),
                              ),
                              DropdownMenuItem(
                                value: "ar",
                                child: Row(
                                  children: [
                                    const Text("عربي"),
                                    Gap(5.w),
                                  ],
                                ),
                              ),
                            ],
                            onChanged: (String? newValue) {
                              onboardingCubit.changeLanguage(
                                  context, newValue!);
                            },
                            underline: const SizedBox.shrink(),
                            // This removes the default underline/border
                            icon: Icon(
                              MdiIcons.translate,
                              color: AppColors.primaryGold,
                            ),
                            isDense: true,
                            // Optional: Add an icon to indicate language selection
                            style: CustomTextStyle.kTextStyleF16.copyWith(
                              color: AppColors.primaryGold,
                              fontWeight: FontWeight.w300,
                            ),
                            // Changes text style
                            dropdownColor: AppColors
                                .secondaryWhite, // Changes dropdown menu background color
                          ),
                        ),
                        MaxGap(200.h),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomBtn(
                              label: S.of(context).marhomUser,
                              onPressed: () {},
                            ),
                            CustomBtn(
                              label: S.of(context).yourComsSupervisor,
                              onPressed: () => context
                                  .pushNamed(supervisorPhoneRegisterView),
                            ),
                          ],
                        )
                      ],
                    ),
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
