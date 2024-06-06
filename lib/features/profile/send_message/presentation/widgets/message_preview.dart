import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/send_message_cubit.dart';

class MessagePreview extends StatelessWidget {
  const MessagePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendMessageCubit, SendMessageStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        SendMessageCubit sendMessageCubit = SendMessageCubit.get(context);
        return Container(
          padding: const EdgeInsets.all(Dimensions.p16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.r12),
              border: Border.all(
                color: Colors.black,
              )),
          child: Column(
            children: [
              Text(
                "Indeed, we belong to Allah, and indeed to Him we shall return",
                style: CustomTextStyle.kTextStyleF12.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                width: context.queryWidth.w,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: context.queryHeight.h * 0.01,
                  children: [
                    Text(
                      "Has moved to the mercy of Allah Almighty ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit.deceasedNameCtrl.hasValue
                            ? " ${sendMessageCubit.deceasedNameCtrl.value}"
                            : "Deceased Name",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gap(10.w),
                    Text(
                      "and the funeral prayer will be performed for him on",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit.weekDay.title.isNotEmpty
                            ? " ${sendMessageCubit.weekDay.title}"
                            : "Day of Death",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " after prayer ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit.prayer.title.isNotEmpty
                            ? " ${sendMessageCubit.prayer.title}"
                            : "Prayer",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " at ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        AppConstants.mosqueAddress != ""
                            ? "${AppConstants.mosqueAddress} mosque"
                            : "Mosque Location",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " the burial will be at ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        AppConstants.burialAddress != ""
                            ? AppConstants.burialAddress
                            : "Burial Location",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " and the funeral will be at ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit
                            .funeralControllers.first.hasValue
                            ? sendMessageCubit
                            .funeralControllers.first.value
                            : "Funeral Location",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " Or Call ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit
                            .nameControllers.first.hasValue
                            ? sendMessageCubit
                            .nameControllers.first.value
                            : "Deceased Family Member",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                      const EdgeInsets.all(Dimensions.p5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        sendMessageCubit
                            .phoneControllers.first.hasValue
                            ? sendMessageCubit
                            .phoneControllers.first.value
                            : "Deceased Family Member Phone",
                        style: CustomTextStyle.kTextStyleF12
                            .copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Text(
                      " We ask God to have mercy on him and to grant him the highest paradise ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      " May God have mercy on us all ",
                      style:
                      CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
