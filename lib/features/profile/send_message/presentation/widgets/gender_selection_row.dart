import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_colors.dart';
import '../manager/send_message_cubit.dart';

class GenderSelectionRow extends StatefulWidget {
  const GenderSelectionRow({super.key});

  @override
  State<GenderSelectionRow> createState() => _GenderSelectionRowState();
}

class _GenderSelectionRowState extends State<GenderSelectionRow> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageStates>(
      listener: (context, state) {},
      builder: (context, state) {
        SendMessageCubit sendMessageCubit = SendMessageCubit.get(context);
        return Row(
          children: [
            Row(
              children: [
                Radio(
                  value: Gender.male,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                      sendMessageCubit.gender = value!;
                    });
                  },
                  activeColor: AppColors.primaryGold,
                ),
                Text(Gender.male.title),
              ],
            ),
            Gap(10.w),
            Row(
              children: [
                Radio(
                  value: Gender.female,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                      sendMessageCubit.gender = value!;
                    });
                  },
                  activeColor: AppColors.primaryGold,
                ),
                Text(Gender.female.title),
              ],
            ),
          ],
        );
      },
    );
  }
}
