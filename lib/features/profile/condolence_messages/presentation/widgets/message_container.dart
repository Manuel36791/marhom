import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class MessageContainer extends StatelessWidget {
  final String message;

  const MessageContainer({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimensions.p8),
      decoration: BoxDecoration(
        color: AppColors.tertiaryGrey,
        borderRadius: BorderRadius.circular(Dimensions.r12),
      ),
      child: Column(
        children: [
          Text(
            message,
            style: CustomTextStyle.kTextStyleF16.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          Gap(10.h),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(Dimensions.p8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.primaryGold,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () async {
                      await Clipboard.setData(
                        ClipboardData(
                          text: message,
                        ),
                      ).then(
                        (value) => context.defaultSnackBar(
                          "Content copied to clipboard",
                        ),
                      );
                      // copied successfully
                    },
                    child: Center(
                      child: Text(
                        "Copy",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () async {
                    var result = await Share.share(message);
                    if (result.status == ShareResultStatus.success) {
                      if(context.mounted) {
                        context.defaultSnackBar(
                          "Message shared successfully",
                          color: AppColors.successGreen,
                          textColor: AppColors.blackText,
                        );
                      }
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(Dimensions.p8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primaryGold,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Share",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
