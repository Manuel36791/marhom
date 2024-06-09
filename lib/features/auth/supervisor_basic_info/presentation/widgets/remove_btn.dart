import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class RemoveBtn extends StatelessWidget {
  final VoidCallback onTap;
  const RemoveBtn({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.p16),
        decoration: BoxDecoration(
          color: AppColors.primaryGold,
          borderRadius: BorderRadius.circular(Dimensions.r12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Remove",
              style: CustomTextStyle.kTextStyleF16.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
            Icon(
              MdiIcons.minus,
              size: 20.sp,
            )
          ],
        ),
      ),
    );
  }
}
