import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/send_message_cubit.dart';

class PrayersDropdownMenu extends StatelessWidget {
  const PrayersDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        SendMessageCubit sendMessageCubit = SendMessageCubit.get(context);
        return Container(
          width: context.queryWidth.w,
          padding: const EdgeInsets.all(Dimensions.p16),
          decoration: BoxDecoration(
            color: AppColors.primaryGold,
            borderRadius: BorderRadius.circular(Dimensions.r12),
          ),
          child: Center(
            child: DropdownButton<Prayers>(
              value: sendMessageCubit.prayer,
              items: [
                DropdownMenuItem(
                    value: Prayers.fajr,
                    child: Text(Prayers.fajr.title)),
                DropdownMenuItem(
                  value: Prayers.sunrise,
                  child: Text(Prayers.sunrise.title),
                ),
                DropdownMenuItem(
                  value: Prayers.dhuhr,
                  child: Text(Prayers.dhuhr.title),
                ),
                DropdownMenuItem(
                  value: Prayers.asr,
                  child: Text(Prayers.asr.title),
                ),
                DropdownMenuItem(
                  value: Prayers.maghrib,
                  child: Text(Prayers.maghrib.title),
                ),
                DropdownMenuItem(
                  value: Prayers.isha,
                  child: Text(Prayers.isha.title),
                ),
                DropdownMenuItem(
                  value: Prayers.tahajjud,
                  child: Text(Prayers.tahajjud.title),
                ),
                DropdownMenuItem(
                  value: Prayers.sehri,
                  child: Text(Prayers.sehri.title),
                ),
              ],
              onChanged: (newValue) {
                sendMessageCubit.prayer = newValue!;
              },
              underline: const SizedBox.shrink(),
              isDense: true,
              isExpanded: true,
              borderRadius: BorderRadius.circular(Dimensions.r12),
              dropdownColor: AppColors.primaryGold,
              style: CustomTextStyle.kTextStyleF16.copyWith(
                color: AppColors.blackText,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        );
      },
    );
  }
}
