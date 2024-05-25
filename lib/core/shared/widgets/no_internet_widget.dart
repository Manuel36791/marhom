import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../generated/l10n.dart';
import '../../utils/app_images.dart';
import '../../utils/app_text_styles.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              AppImages.wifiSvg,
              height: 135.h,
              width: 150.w,
            ),
          ),
          Gap(20.h),
          Text(
            S.of(context).noInternetConnection,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF18,
          ),
          Gap(10.h),
          Text(
            S.of(context).checkInternetConnection,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF14,
          ),
        ],
      ),
    );
  }
}
