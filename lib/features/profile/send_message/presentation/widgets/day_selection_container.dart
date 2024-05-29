import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/send_message_cubit.dart';

class DaySelectionContainer extends StatefulWidget {
  const DaySelectionContainer({super.key});

  @override
  State<DaySelectionContainer> createState() => _DaySelectionContainerState();
}

class _DaySelectionContainerState extends State<DaySelectionContainer> {
  int selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageStates>(
      listener: (context, state) {},
      builder: (context, state) {
        SendMessageCubit sendMessageCubit = SendMessageCubit.get(context);
        return Container(
          padding: const EdgeInsets.all(Dimensions.p16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.r12),
              border: Border.all(
                color: Colors.black,
              )),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 5 / 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: WeekDays.values.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedDay = index;
                    sendMessageCubit.weekDay = WeekDays.values[index];
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: selectedDay == index
                        ? AppColors.primaryGold
                        : Colors.transparent,
                    borderRadius:
                    BorderRadius.circular(Dimensions.r50),
                  ),
                  child: Center(
                    child: Text(
                      WeekDays.values[index].name,
                      style: CustomTextStyle.kTextStyleF16
                          .copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
