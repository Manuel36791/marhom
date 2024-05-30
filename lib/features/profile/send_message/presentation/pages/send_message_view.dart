import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/send_message_cubit.dart';
import '../widgets/day_selection_container.dart';
import '../widgets/gender_selection_row.dart';
import '../widgets/location_container.dart';

class SendMessageView extends StatefulWidget {
  const SendMessageView({super.key});

  @override
  State<SendMessageView> createState() => _SendMessageViewState();
}

class _SendMessageViewState extends State<SendMessageView> {
  @override
  void dispose() {
    SendMessageCubit.get(context).disposeCtrl();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SendMessageCubit(),
      child: BlocConsumer<SendMessageCubit, SendMessageStates>(
        listener: (context, state) {
          state.maybeWhen(
            indexMaintained: (state) {
              context.defaultSnackBar(
                "Maximum number of family members reached",
                color: AppColors.warningYellow,
                textColor: AppColors.blackText,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          SendMessageCubit sendMessageCubit = SendMessageCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(50.h),
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppImages.leafSvg,
                              height: 80.h,
                            ),
                            Text(
                              S.of(context).marhom,
                              style: CustomTextStyle.kTextStyleF26,
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        "Create a message",
                        style: CustomTextStyle.kTextStyleF26,
                      ),
                      Gap(20.h),
                      CustomFormField(
                        stream: sendMessageCubit.deceasedNameStream,
                        onChanged: (name) {
                          sendMessageCubit.deceasedName(name);
                        },
                        label: "Deceased Name",
                        keyboardType: TextInputType.text,
                        nextAction: TextInputAction.next,
                      ),
                      Gap(15.h),
                      Text(
                        "Gender",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const GenderSelectionRow(),
                      Gap(5.h),
                      Text(
                        "Day",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(10.h),
                      const DaySelectionContainer(),
                      Gap(20.h),
                      const LocationContainer(title: " prayer"),
                      Gap(20.h),
                      const LocationContainer(title: "Choose Mosque"),
                      Gap(20.h),
                      const LocationContainer(title: "Burial Location"),
                      Gap(20.h),
                      Text(
                        "Funeral Location",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: const Stream.empty(),
                        onChanged: (value) {},
                        label: "Funeral Location",
                      ),
                      Gap(10.h),
                      CustomFormField(
                        stream: const Stream.empty(),
                        onChanged: (value) {},
                        label: "Paste Location",
                      ),
                      Gap(10.h),
                      Container(
                        padding: const EdgeInsets.all(Dimensions.p16),
                        decoration: BoxDecoration(
                          color: AppColors.primaryGold,
                          borderRadius: BorderRadius.circular(Dimensions.r12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Add",
                              style: CustomTextStyle.kTextStyleF16.copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Icon(
                              MdiIcons.plus,
                              size: 20.sp,
                            )
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        "Decedent Family",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(10.h),
                      ...List.generate(sendMessageCubit.index, (index) {
                        sendMessageCubit.increaseCtrl();
                        return Column(
                          children: [
                            CustomFormField(
                              stream: sendMessageCubit
                                  .nameControllers[index].stream,
                              onChanged: (value) {},
                              label: "Name ${index + 1}",
                            ),
                            Gap(10.h),
                            CustomFormField(
                              stream: sendMessageCubit
                                  .phoneControllers[index].stream,
                              onChanged: (value) {},
                              label: "Phone ${index + 1}",
                            ),
                          ],
                        );
                      }),
                      Gap(10.h),
                      GestureDetector(
                        onTap: () {
                          sendMessageCubit.increaseIndex();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(Dimensions.p16),
                          decoration: BoxDecoration(
                            color: AppColors.primaryGold,
                            borderRadius: BorderRadius.circular(Dimensions.r12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Add",
                                style: CustomTextStyle.kTextStyleF16.copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Icon(
                                MdiIcons.plus,
                                size: 20.sp,
                              )
                            ],
                          ),
                        ),
                      ),
                      Gap(20.h),
                      Container(
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
                                    "And the funeral prayer will be performed for him on",
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
                                          : "Deceased Name",
                                      style: CustomTextStyle.kTextStyleF12
                                          .copyWith(
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
