import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';

class ContentContainer extends StatelessWidget {
  final Widget child;

  const ContentContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.p8),
      decoration: BoxDecoration(
        color: AppColors.tertiaryBeige,
        borderRadius: BorderRadius.circular(Dimensions.r12),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.p16.w, vertical: Dimensions.p8.h),
        decoration: BoxDecoration(
          color: AppColors.tertiaryBeige,
          borderRadius: BorderRadius.circular(Dimensions.r15),
          border: Border.all(
            color: AppColors.primaryGold,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.primaryGold,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
