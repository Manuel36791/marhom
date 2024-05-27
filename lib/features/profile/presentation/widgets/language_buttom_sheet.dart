import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../main.dart';
import 'content_container.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              MyApp.setLocale(context, const Locale("en"));
            });

            CacheHelper.changeAppLang("en");
          },
          child: ContentContainer(
            child: Row(
              children: [
                Text(
                  'English - EN',
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    color: Intl.getCurrentLocale() == "en"
                        ? AppColors.infoBlue
                        : AppColors.greyText,
                  ),
                ),
                const Spacer(),
                Intl.getCurrentLocale() == "en"
                    ? Icon(
                        Icons.check,
                        size: 16.sp,
                        color: AppColors.infoBlue,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
        Gap(20.h),
        GestureDetector(
          onTap: () {
            setState(() {
              MyApp.setLocale(context, const Locale("ar"));
            });
            CacheHelper.changeAppLang("ar");
          },
          child: ContentContainer(
            child: Row(
              children: [
                Text(
                  'العربية - AR',
                  style: CustomTextStyle.kTextStyleF14.copyWith(
                    color: Intl.getCurrentLocale() == "en"
                        ? AppColors.greyText
                        : AppColors.infoBlue,
                  ),
                ),
                const Spacer(),
                Intl.getCurrentLocale() == "en"
                    ? const SizedBox.shrink()
                    : Icon(
                        Icons.check,
                        size: 16.sp,
                        color: AppColors.infoBlue,
                      ),
                // Icon(Icons.check,size: 16.sp,color: AppColors.lightBlue,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
