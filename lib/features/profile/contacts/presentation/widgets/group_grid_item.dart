import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class GroupGridItem extends StatelessWidget {
  final int index;
  const GroupGridItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.p32,
        vertical: Dimensions.p12,
      ),
      decoration: BoxDecoration(
          color: AppColors.secondaryWhite,
          borderRadius: BorderRadius.circular(Dimensions.r12),
          border: Border.all(
            color: AppColors.primaryGold,
          )),
      child: Center(
        child: Text(
          "Group ${index + 1}",
          style: CustomTextStyle.kTextStyleF16.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
