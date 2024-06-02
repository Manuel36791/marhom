import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../../../profile/user_delete_account/data/models/user_delete_account_model.dart';
import '../../../../profile/user_delete_account/presentation/manager/user_delete_account_cubit.dart';

class UserDeleteAccountDialog extends StatefulWidget {
  const UserDeleteAccountDialog({super.key});

  @override
  State<UserDeleteAccountDialog> createState() =>
      _UserDeleteAccountDialogState();
}

class _UserDeleteAccountDialogState
    extends State<UserDeleteAccountDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Are you sure you want to delete your account?"),
      actions: [
        BlocProvider(
          create: (context) => di.di<UserDeleteAccountCubit>(),
          child: BlocConsumer<UserDeleteAccountCubit,
              UserDeleteAccountStates>(
            listener: (context, state) {
              state.maybeWhen(
                success: (state) {
                  if (state.status == 200) {
                    context.defaultSnackBar(
                      "Your account has been successfully deleted",
                      color: AppColors.successGreen,
                      textColor: AppColors.blackText,
                    );
                    context.pushNamed(userRegisterView);
                  } else {
                    context.defaultSnackBar(
                      "We were unable to delete your account. Please try again",
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
              UserDeleteAccountCubit editProfileCubit =
              UserDeleteAccountCubit.get(
                context,
              );
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      editProfileCubit.userDeleteAccount(
                        UserDeleteAccountModel(
                          token: AppConstants.userToken,
                        ),
                      );
                    },
                    child: Container(
                      width: context.queryWidth,
                      padding: const EdgeInsets.all(Dimensions.p16),
                      decoration: BoxDecoration(
                        color: AppColors.statusRedLight,
                        borderRadius: BorderRadius.circular(Dimensions.r24),
                      ),
                      child: Center(
                        child: Text(
                          "Yes",
                          style: CustomTextStyle.kTextStyleF16.copyWith(
                            color: AppColors.statusRed,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(10.h),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      width: context.queryWidth,
                      padding: const EdgeInsets.all(Dimensions.p16),
                      decoration: BoxDecoration(
                        color: AppColors.infoBlueLight,
                        borderRadius: BorderRadius.circular(Dimensions.r24),
                      ),
                      child: Center(
                        child: Text(
                          "No",
                          style: CustomTextStyle.kTextStyleF16.copyWith(
                            color: AppColors.infoBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
