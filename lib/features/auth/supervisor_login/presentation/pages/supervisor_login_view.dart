import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/supervisor_login_model.dart';
import '../manager/supervisor_login_cubit.dart';

class SupervisorLoginView extends StatefulWidget {
  const SupervisorLoginView({super.key});

  @override
  State<SupervisorLoginView> createState() =>
      _SupervisorLoginViewState();
}

class _SupervisorLoginViewState extends State<SupervisorLoginView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<SupervisorLoginCubit>(),
      child: BlocConsumer<SupervisorLoginCubit, SupervisorLoginStates>(
        listener: (context, state) {
          SupervisorLoginCubit loginCubit =
              SupervisorLoginCubit.get(context);
          state.maybeWhen(
            success: (state) async {
              if (state.status == 200) {
                context.defaultSnackBar(
                  "Logged in successfully, welcome again ${state.user!.firstName}",
                  color: AppColors.successGreen,
                  textColor: AppColors.blackText,
                );
                AppConstants.userToken = state.token!;

                CacheHelper.setData("email", loginCubit.userNameCtrl.value);
                CacheHelper.setData("pass", loginCubit.passCtrl.value);

                context.pushNamed(bottomNavbar);
              } else if (state.status == 409) {
                context.defaultSnackBar(
                  "Your account is not verified, please verify your account",
                  color: AppColors.warningYellow,
                  textColor: AppColors.blackText,
                );
                // loginCubit.resendCode(
                //   ResendCodeModel(
                //     email: loginCubit.emailCtrl.value,
                //   ),
                // );
                // context.pushNamed(
                //   verifyAccountPageRoute,
                //   arguments: AuthArgs(
                //     email: loginCubit.emailCtrl.value,
                //   ),
                // );
              } else {
                context.defaultSnackBar(
                  "Login failed, please try again",
                  color: AppColors.errorRed,
                );
              }
            },
            error: (failure) {
              context.defaultSnackBar(
                S.of(context).error(failure.code.toString(), failure.message),
                color: AppColors.errorRed,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          SupervisorLoginCubit loginCubit = SupervisorLoginCubit.get(context);
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
                        S.of(context).welcomeToYourCommunications,
                        style: CustomTextStyle.kTextStyleF26,
                        textAlign: TextAlign.center,
                      ),
                      Gap(20.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: S.of(context).createNewAccount,
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                            const TextSpan(text: " "),
                            TextSpan(
                              text: S.of(context).supervisor,
                              style: CustomTextStyle.kTextStyleF16.copyWith(
                                color: AppColors.redText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      CustomFormField(
                        stream: loginCubit.userNameStream,
                        onChanged: (userName) {
                          loginCubit.validateUserName(userName);
                        },
                        label: "User Name",
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.next,
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: loginCubit.passStream,
                        onChanged: (pass) {
                          loginCubit.validatePass(pass);
                        },
                        label: S.of(context).password,
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.done,
                      ),
                      Gap(10.h),
                      ConditionalBuilder(
                        condition: state is! Loading,
                        builder: (context) {
                          return StreamBuilder<Object>(
                              stream: loginCubit.loginBtnStream,
                              builder: (context, snapshot) {
                                return CustomBtn(
                                  label: S.of(context).continueBtn,
                                  onPressed: snapshot.hasData
                                      ? () {
                                          loginCubit.supervisorLogin(
                                            SupervisorLoginModel(
                                              userName:
                                                  loginCubit.userNameCtrl.value,
                                              password:
                                                  loginCubit.passCtrl.value,
                                            ),
                                          );
                                        }
                                      : null,
                                );
                              });
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
                        label: S.of(context).goBack,
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
