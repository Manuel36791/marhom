import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/supervisor_register_cubit.dart';

class SupervisorPhoneRegisterView extends StatefulWidget {
  const SupervisorPhoneRegisterView({super.key});

  @override
  State<SupervisorPhoneRegisterView> createState() =>
      _SupervisorPhoneRegisterViewState();
}

class _SupervisorPhoneRegisterViewState
    extends State<SupervisorPhoneRegisterView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<SupervisorRegisterCubit>(),
      child: BlocConsumer<SupervisorRegisterCubit, SupervisorRegisterStates>(
        listener: (context, state) {
          SupervisorRegisterCubit registerCubit =
          SupervisorRegisterCubit.get(context);
          state.maybeWhen(
            checkSuccess: (state) {
              if (state.status == 200) {
                registerCubit.isRegistered = true;
              } else if (state.status == 404) {
                registerCubit.isRegistered = false;
              }
            },
            checkFailed: (failure) {
              context.defaultSnackBar(
                S.of(context).error(failure.code.toString(), failure.message),
                color: AppColors.errorRed,
              );
            },
            stepOneSuccess: (state) {
              if (state.status == 200) {
                context.pushNamed(
                  supervisorPhoneConfView,
                  arguments: SupervisorRegisterArguments(
                    firstName: state.user!.firstName!,
                    lastName: state.user!.firstName!,
                    dialCode: registerCubit.dialCode,
                    phoneNumber: state.user!.phone!,
                    countryCode: registerCubit.countryCode,
                  ),
                );
              }
            },
            stepOneFailure: (failure) {
              context.defaultSnackBar(
                S.of(context).error(failure.code.toString(), failure.message),
                color: AppColors.errorRed,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          SupervisorRegisterCubit registerCubit =
          SupervisorRegisterCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Gap(50.h),
                      Text(
                        S
                            .of(context)
                            .welcomeToYourCommunications,
                        style: CustomTextStyle.kTextStyleF26,
                        textAlign: TextAlign.center,
                      ),
                      Gap(20.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: S
                                  .of(context)
                                  .createNewAccount,
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                            const TextSpan(text: " "),
                            TextSpan(
                              text: S
                                  .of(context)
                                  .supervisor,
                              style: CustomTextStyle.kTextStyleF16.copyWith(
                                color: AppColors.redText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Row(
                        children: [
                          Flexible(
                            child: CustomFormField(
                              stream: registerCubit.firstNameStream,
                              onChanged: (firstName) {
                                registerCubit.validateFirstName(firstName);
                              },
                              label: S
                                  .of(context)
                                  .firstName,
                              keyboardType: TextInputType.text,
                              nextAction: TextInputAction.next,
                            ),
                          ),
                          Gap(10.w),
                          Flexible(
                            child: CustomFormField(
                              stream: registerCubit.lastNameStream,
                              onChanged: (lastName) {
                                registerCubit.validateLastName(lastName);
                              },
                              label: S
                                  .of(context)
                                  .lastName,
                              keyboardType: TextInputType.text,
                              nextAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          CountryCodePicker(
                            initialSelection: "SA",
                            favorite: const ["966", "SA"],
                            onChanged: (code) {
                              registerCubit.dialCode = code.dialCode!;
                              registerCubit.countryCode = code.code!;
                            },
                            textStyle: CustomTextStyle.kTextStyleF12,
                          ),
                          Expanded(
                            child: CustomFormField(
                              stream: registerCubit.phoneStream,
                              onChanged: (phone) {
                                registerCubit.validatePhone(phone);
                              },
                              label: S
                                  .of(context)
                                  .phone,
                              keyboardType: TextInputType.phone,
                              nextAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      ConditionalBuilder(
                        condition: state is! StepOneLoading,
                        builder: (context) {
                          return CustomBtn(
                            label: S
                                .of(context)
                                .continueBtn,
                            // onPressed: () {
                            //   registerCubit.supervisorRegisterStepOne(
                            //     SupervisorRegisterStepOneModel(
                            //       firstName: registerCubit.firstNameCtrl.value,
                            //       lastName: registerCubit.lastNameCtrl.value,
                            //       phone: registerCubit.phoneCtrl.value,
                            //     ),
                            //   );
                            // },
                            onPressed: () =>
                                context.pushNamed(supervisorBasicInfoView),
                          );
                        },
                        fallback: (context) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primaryGold,
                            ),
                          );
                        },
                      ),
                      CustomBtn(
                        label: S
                            .of(context)
                            .goBack,
                        onPressed: () => context.pop(),
                      ),
                    ],
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
