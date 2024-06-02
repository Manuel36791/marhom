import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/resend_code_model.dart';
import '../../data/models/verify_account_model.dart';
import '../manager/verify_account_cubit.dart';

class VerifyAccountView extends StatefulWidget {
  final num accountType;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String dialCode;
  final String countryCode;

  const VerifyAccountView({
    super.key,
    required this.accountType,
    required this.phoneNumber,
    required this.dialCode,
    required this.countryCode,
    required this.firstName,
    required this.lastName,
  });

  @override
  State<VerifyAccountView> createState() => _VerifyAccountViewState();
}

class _VerifyAccountViewState extends State<VerifyAccountView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<VerifyAccountCubit>(),
      child: BlocConsumer<VerifyAccountCubit, VerifyAccountStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 200) {
                context.defaultSnackBar(
                  "Your account has been verified successfully",
                  color: AppColors.successGreen,
                  textColor: AppColors.blackText,
                );
                widget.accountType == 2
                    ? context.pushNamed(
                        supervisorRegisterView,
                        arguments: SupervisorRegisterArguments(
                          accountType: widget.accountType,
                          firstName: widget.firstName,
                          lastName: widget.lastName,
                          dialCode: widget.dialCode,
                          phoneNumber: widget.phoneNumber,
                          countryCode: widget.countryCode,
                        ),
                      )
                    : context.pushNamed(userRegisterView);
              } else if (state.status == 409) {
                context.defaultSnackBar(
                  "The OTP sent is not correct. Please try again.",
                  color: AppColors.errorRed,
                );
              } else {
                context.defaultSnackBar(
                  "This phone number is not registered",
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
            resendCode: (state) {
              if (state.status == 200) {
                context.defaultSnackBar(
                  "New OTP sent successfully to your whatsapp",
                  color: AppColors.warningYellow,
                  textColor: AppColors.blackText,
                );
              } else {
                context.defaultSnackBar(
                  "The phone number you entered is invalid",
                  color: AppColors.errorRed,
                );
              }
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          VerifyAccountCubit verifyAccountCubit =
              VerifyAccountCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(50.h),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppImages.leafSvg,
                              height: 80.h,
                            ),
                            Gap(10.h),
                            Text(
                              S.of(context).marhom,
                              style: CustomTextStyle.kTextStyleF26,
                            ),
                          ],
                        ),
                      ),
                      Gap(24.h),
                      Text(
                        S.of(context).confirmYourPhoneNumber,
                        style: CustomTextStyle.kTextStyleF26,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        S
                            .of(context)
                            .enterOtp(widget.dialCode, widget.phoneNumber),
                        style: CustomTextStyle.kTextStyleF12.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Gap(48.h),
                      StreamBuilder(
                        stream: const Stream.empty(),
                        builder: (context, snapshot) {
                          return Pinput(
                            onChanged: (code) {
                              // verifyAccountCubit.validateCode(code);
                            },
                            closeKeyboardWhenCompleted: true,
                            androidSmsAutofillMethod:
                                AndroidSmsAutofillMethod.smsRetrieverApi,
                            errorText: snapshot.hasError
                                ? snapshot.error.toString()
                                : null,
                            errorTextStyle:
                                CustomTextStyle.kTextStyleF12.copyWith(
                              color: AppColors.errorRed,
                            ),
                            length: 4,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            showCursor: true,
                            defaultPinTheme: PinTheme(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: AppColors.secondaryWhite,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.r12),
                                border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              textStyle: CustomTextStyle.kPinTextStyle,
                            ),
                          );
                        },
                      ),
                      Gap(24.h),
                      CustomBtn(
                        label: S.of(context).confirm,
                        onPressed: () => verifyAccountCubit.verifyUserAccount(
                          VerifyAccountModel(
                            otp: verifyAccountCubit.pinCtrl.value,
                            phone: widget.phoneNumber,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).didntReceiveTheOtp,
                            style: CustomTextStyle.kTextStyleF12.copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () => verifyAccountCubit.resendCode(
                              ResendCodeModel(
                                phone: widget.phoneNumber,
                              ),
                            ),
                            child: Text(
                              S.of(context).resendOtp,
                              style: CustomTextStyle.kTextStyleF12.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
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
