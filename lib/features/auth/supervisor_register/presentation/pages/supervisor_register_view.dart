import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/supervisor_register_cubit.dart';

class SupervisorRegisterView extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String dialCode;
  final String countryCode;

  const SupervisorRegisterView(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.dialCode,
      required this.countryCode});

  @override
  State<SupervisorRegisterView> createState() => _SupervisorRegisterViewState();
}

class _SupervisorRegisterViewState extends State<SupervisorRegisterView> {
  bool isPassword = true;
  bool isPassConf = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<SupervisorRegisterCubit>()
        ..ctrlInitValues(widget.firstName, widget.lastName, widget.dialCode,
            widget.phoneNumber),
      child: BlocConsumer<SupervisorRegisterCubit, SupervisorRegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          SupervisorRegisterCubit registerCubit =
              SupervisorRegisterCubit.get(context);
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
                            Text(
                              S.of(context).marhom,
                              style: CustomTextStyle.kTextStyleF26,
                            ),
                          ],
                        ),
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
                      Row(
                        children: [
                          Flexible(
                            child: CustomFormField(
                              stream: registerCubit.firstNameStream,
                              onChanged: (firstName) {
                                firstName = widget.firstName;
                                registerCubit.validateFirstName(firstName);
                              },
                              initValue: widget.firstName,
                              label: S.of(context).firstName,
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
                              initValue: widget.lastName,
                              label: S.of(context).lastName,
                              keyboardType: TextInputType.text,
                              nextAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CountryCodePicker(
                            padding: EdgeInsets.zero,
                            initialSelection: widget.countryCode,
                            favorite: [widget.dialCode, widget.countryCode],
                            onChanged: (code) {
                              // registerCubit.countryDialCode = code.dialCode!;
                            },
                            textStyle: CustomTextStyle.kTextStyleF12,
                          ),
                          Expanded(
                            child: CustomFormField(
                              stream: registerCubit.phoneStream,
                              onChanged: (phone) {
                                registerCubit.validatePhone(phone);
                              },
                              initValue: widget.phoneNumber,
                              label: S.of(context).phone,
                              keyboardType: TextInputType.phone,
                              nextAction: TextInputAction.next,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: registerCubit.userNameStream,
                        onChanged: (userName) {
                          registerCubit.validateUserName(userName);
                        },
                        label: "User Name",
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.next,
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: registerCubit.emailStream,
                        onChanged: (email) {
                          registerCubit.validateEmail(email);
                        },
                        label: S.of(context).email,
                        keyboardType: TextInputType.emailAddress,
                        nextAction: TextInputAction.next,
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: registerCubit.passStream,
                        onChanged: (pass) {
                          registerCubit.validatePass(pass);
                        },
                        label: S.of(context).password,
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.next,
                        isPassword: isPassword,
                        postIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          child: Icon(
                            isPassword ? MdiIcons.eye : MdiIcons.eyeOff,
                            color: AppColors.primaryGold,
                          ),
                        ),
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: registerCubit.passConfStream,
                        onChanged: (passConf) {
                          registerCubit.validatePassConfirm(passConf);
                        },
                        label: S.of(context).passwordConfirmation,
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.next,
                        isPassword: isPassConf,
                        postIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassConf = !isPassConf;
                            });
                          },
                          child: Icon(
                            isPassConf ? MdiIcons.eye : MdiIcons.eyeOff,
                            color: AppColors.primaryGold,
                          ),
                        ),
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: registerCubit.snapChatStream,
                        onChanged: (snapChatId) {
                          registerCubit.validateSnapChatId(snapChatId);
                        },
                        label: S.of(context).snapChatId,
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.done,
                        preIcon: Padding(
                          padding: const EdgeInsets.all(Dimensions.p8),
                          child: SvgPicture.asset(
                            AppImages.snapchatLogoSvg,
                            height: 16.h,
                            width: 16.w,
                          ),
                        ),
                      ),
                      StreamBuilder(
                          stream: registerCubit.registerBtnStream,
                          builder: (context, snapshot) {
                            return ConditionalBuilder(
                              condition: true,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: const EdgeInsets.all(Dimensions.p16),
                                  child: CustomBtn(
                                    label: S.of(context).createNewAccount,
                                    onPressed: snapshot.hasError
                                        ? null
                                        : () => context.pushNamed(bottomNavbar),
                                  ),
                                );
                              },
                              fallback: (BuildContext context) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: AppColors.primaryGold,
                                  ),
                                );
                              },
                            );
                          }),
                      Row(
                        children: [
                          Text(
                            S.of(context).alreadyHaveAnAccount,
                            style: CustomTextStyle.kTextStyleF16.copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              S.of(context).login,
                              style: CustomTextStyle.kTextStyleF16.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
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
