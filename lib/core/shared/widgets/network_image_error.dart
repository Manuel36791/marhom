import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../generated/l10n.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';

class NetworkImageError extends StatelessWidget {
  const NetworkImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.imageBroken,
          color: AppColors.errorRed,
        ),
        Gap(5.h),
        Text(
          S.of(context).noImageAvailable,
          style: CustomTextStyle.kTextStyleF12.copyWith(
            color: AppColors.errorRed,
          ),
        ),
      ],
    );
  }
}
