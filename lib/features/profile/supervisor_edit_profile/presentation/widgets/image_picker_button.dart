import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class ImagePickerBtn extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const ImagePickerBtn({super.key, required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.p16),
        decoration: BoxDecoration(
          color: AppColors.primaryGold,
          borderRadius: BorderRadius.circular(Dimensions.r12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: AppColors.tertiaryBeige,),
            Gap(10.w),
            Text(
              label,
              style: CustomTextStyle.kTextStyleF16.copyWith(
                color: AppColors.tertiaryBeige,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
