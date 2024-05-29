import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class LocationContainer extends StatelessWidget {
  final String title;
  const LocationContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.queryWidth.w,
      padding: const EdgeInsets.all(Dimensions.p16),
      decoration: BoxDecoration(
        color: AppColors.primaryGold,
        borderRadius: BorderRadius.circular(Dimensions.r12),
      ),
      child: Text(
        title,
        style: CustomTextStyle.kTextStyleF16.copyWith(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
