import 'package:cached_network_image/cached_network_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../../generated/l10n.dart';
import '../../../../../core/shared/models/user_data_model_utils.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../data/models/user_edit_profile_model.dart';
import '../manager/user_edit_profile_cubit.dart';

class UserEditProfileView extends StatefulWidget {
  const UserEditProfileView({super.key});

  @override
  State<UserEditProfileView> createState() => _UserEditProfileViewState();
}

class _UserEditProfileViewState extends State<UserEditProfileView> {

  @override
  void dispose() {
    UserEditProfileCubit.get(context).close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.di<UserEditProfileCubit>()..userData(),
        ),
      ],
      child: BlocConsumer<UserEditProfileCubit, UserEditProfileStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 200) {
                context.defaultSnackBar(
                  "Your profile has been successfully updated",
                  color: AppColors.successGreen,
                  textColor: AppColors.blackText,
                );
                // context.pushReplacementNamed(bottomNavBar);
              } else {
                context.defaultSnackBar(
                  state.error ?? "Couldn't update your profile",
                  color: AppColors.errorRed,
                );
              }
            },
            error: (failure) {
              context.defaultSnackBar(
                S.current.error(failure.code.toString(), failure.message),
                color: AppColors.errorRed,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          UserEditProfileCubit editProfileCubit =
              UserEditProfileCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Update Profile",
                style: CustomTextStyle.kTextStyleF20,
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.maybeWhen(
                      initial: () {
                        return GestureDetector(
                          onTap: () {
                            editProfileCubit.pickPhotoDialog(context);
                          },
                          child: Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: editProfileCubit.img == null
                                      ? CachedNetworkImageProvider(
                                          "${AppConstants.imageUrl}${UserDataUtils.instance!.avatar}")
                                      : FileImage(editProfileCubit.img!)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                          ),
                        );
                      },
                      loading: () {
                        return GestureDetector(
                          onTap: () {
                            editProfileCubit.pickPhotoDialog(context);
                          },
                          child: Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: editProfileCubit.img == null
                                      ? CachedNetworkImageProvider(
                                          "${AppConstants.imageUrl}${UserDataUtils.instance!.avatar}")
                                      : FileImage(editProfileCubit.img!)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                          ),
                        );
                      },
                      uploadSuccess: (state) {
                        return GestureDetector(
                          onTap: () {
                            editProfileCubit.pickPhotoDialog(context);
                          },
                          child: Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: editProfileCubit.img == null
                                      ? CachedNetworkImageProvider(
                                          "${AppConstants.imageUrl}${UserDataUtils.instance!.avatar}")
                                      : FileImage(editProfileCubit.img!)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                          ),
                        );
                      },
                      success: (state) {
                        return GestureDetector(
                          onTap: () {
                            editProfileCubit.pickPhotoDialog(context);
                          },
                          child: Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: editProfileCubit.img == null
                                      ? CachedNetworkImageProvider(
                                          "${AppConstants.imageUrl}${UserDataUtils.instance!.avatar}")
                                      : FileImage(editProfileCubit.img!)
                                          as ImageProvider,
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                          ),
                        );
                      },
                      error: (failure) {
                        return GestureDetector(
                          onTap: () {
                            editProfileCubit.pickPhotoDialog(context);
                          },
                          child: Center(
                            child: Container(
                              width: 80.w,
                              height: 80.w,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      "${AppConstants.imageUrl}${UserDataUtils.instance!.avatar}"),
                                  fit: BoxFit.cover,
                                ),
                                shape: const OvalBorder(),
                              ),
                            ),
                          ),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                    ),
                    Gap(20.h),
                    Row(
                      children: [
                        Expanded(
                          child: CustomFormField(
                            initValue: UserDataUtils.instance!.firstName,
                            stream: editProfileCubit.firstNameStream,
                            onChanged: (firstName) {
                              editProfileCubit.changeFirstName(firstName);
                            },
                            label: S.of(context).firstName,
                            nextAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Gap(10.w),
                        Expanded(
                          child: CustomFormField(
                            initValue: UserDataUtils.instance!.lastName,
                            stream: editProfileCubit.lastNameStream,
                            onChanged: (lastName) {
                              editProfileCubit.changeLastName(lastName);
                            },
                            label: S.of(context).lastName,
                            nextAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    Gap(10.h),
                    Row(
                      children: [
                        CountryCodePicker(
                          padding: EdgeInsets.zero,
                          initialSelection: "SA",
                          favorite: const ["+966", "SA"],
                          onChanged: (code) {
                            // registerCubit.dialCode = code.dialCode!;
                          },
                          textStyle: CustomTextStyle.kTextStyleF12,
                        ),
                        Expanded(
                          child: CustomFormField(
                            initValue: UserDataUtils.instance!.phone,
                            stream: editProfileCubit.phoneStream,
                            onChanged: (phone) {
                              editProfileCubit.changePhone(phone);
                            },
                            label: S.of(context).phone,
                            nextAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ],
                    ),
                    Gap(10.h),
                    CustomFormField(
                      initValue: UserDataUtils.instance!.snapChatId,
                      stream: editProfileCubit.snapChatStream,
                      onChanged: (snapchatId) {
                        editProfileCubit.changeSnapchatId(snapchatId);
                      },
                      label: "Snapchat Id",
                      nextAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                    ),
                    ConditionalBuilder(
                      condition: state is! Loading,
                      builder: (BuildContext context) {
                        return StreamBuilder<Object>(
                            stream: editProfileCubit.editProfileBtnStream,
                            builder: (context, snapshot) {
                              return CustomBtn(
                                label: "Update Account",
                                onPressed: snapshot.hasData
                                    ? () async {
                                        await editProfileCubit.imageToBase64(
                                            UserDataUtils.instance!.avatar!);
                                        editProfileCubit.editProfile(
                                          UserEditProfileModel(
                                            token: AppConstants.userToken,
                                            firstName: editProfileCubit
                                                .firstNameCtrl.value,
                                            lastName: editProfileCubit
                                                .lastNameCtrl.value,
                                            phone: editProfileCubit
                                                .phoneCtrl.value,
                                            avatar: editProfileCubit.base64 ==
                                                    ""
                                                ? editProfileCubit.currentAvatar
                                                : editProfileCubit.base64,
                                            snapchatId: editProfileCubit
                                                .snapChatCtrl.value,
                                          ),
                                        );
                                      }
                                    : null,
                              );
                            });
                      },
                      fallback: (BuildContext context) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primaryGold,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
