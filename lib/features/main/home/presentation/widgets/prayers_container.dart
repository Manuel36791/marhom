import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class PrayersContainer extends StatelessWidget {
  final String? prayerIcon;
  final String prayerName;
  final DateTime prayerStartTime;

  const PrayersContainer({
    super.key,
    this.prayerIcon,
    required this.prayerName,
    required this.prayerStartTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.p16),
      decoration: BoxDecoration(
        // color: AppColors.secondaryGray,
        borderRadius: BorderRadius.circular(Dimensions.r5),
        border: const Border(
          bottom: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              prayerIcon != null
                  ? Image.asset(
                      prayerIcon!,
                      height: 30.h,
                      width: 30.w,
                    )
                  : const SizedBox.shrink(),
              Gap(10.w),
              Text(
                prayerName,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            prayerStartTime.format(DateFormatType.timeOnly),
            style: CustomTextStyle.kTextStyleF12.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
