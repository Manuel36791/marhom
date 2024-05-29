import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/dimensions.dart';
import '../models/user_data_model_utils.dart';
import 'network_image_error.dart';
import 'network_image_progressor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size(360.w, 187.h);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryGold,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(Dimensions.r24),
          bottomRight: Radius.circular(Dimensions.r24),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.p16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.sunSvg,
                    height: 25.h,
                    width: 25.w,
                  ),
                  Gap(10.h),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: CustomTextStyle.kTextStyleF14.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        UserDataUtils.instance!.firstName!,
                        style: CustomTextStyle.kTextStyleF14.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(Dimensions.r60),
                        child: CachedNetworkImage(
                          imageUrl: "${AppImages.placeholderImg}60",
                          fit: BoxFit.cover,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  NetworkImageProgress(
                                      downloadProgress: downloadProgress),
                          errorWidget: (context, url, error) =>
                              const NetworkImageError(),
                        ),
                      ),
                      Gap(10.w),
                      SvgPicture.asset(
                        AppImages.notificationSvg,
                        height: 32.h,
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AppImages.drawerSvg,
                    height: 16.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
