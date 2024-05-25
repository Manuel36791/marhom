import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/dimensions.dart';
import '../../utils/extensions.dart';

class CustomBtn extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;
  final bool isUpperCase;
  final double? borderRadius;
  final Color? bgColor;
  final Color? fgColor;
  final TextStyle? textStyle;

  const CustomBtn({
    super.key,
    this.label,
    this.onPressed,
    this.isUpperCase = false,
    this.borderRadius,
    this.fgColor,
    this.bgColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.p16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.p10.w,
            vertical: Dimensions.p10.h,
          ),
          minimumSize: Size(
            double.infinity,
            0.07.sh,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? Dimensions.r12,
            ),
          ),
          backgroundColor: bgColor ?? AppColors.secondaryWhite,
          foregroundColor: fgColor ?? AppColors.primaryGold,
        ),
        child: Text(
          isUpperCase
              ? label!.isNullOrEmpty().toUpperCase()
              : label!.isNullOrEmpty(),
          style: textStyle ?? CustomTextStyle.kBtnTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
