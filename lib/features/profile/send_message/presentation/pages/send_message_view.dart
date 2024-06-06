import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/shared/arguments.dart';
import 'package:marhom/core/shared/models/location_model.dart';
import 'package:marhom/core/shared/widgets/custom_button.dart';
import 'package:marhom/core/utils/app_constants.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/profile/send_message/data/models/send_message_model.dart';
import 'package:marhom/features/profile/send_message/presentation/widgets/message_preview.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
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
import '../widgets/prayers_dropdown_menu.dart';

class SendMessageView extends StatefulWidget {
  const SendMessageView({super.key});

  @override
  State<SendMessageView> createState() => _SendMessageViewState();
}

class _SendMessageViewState extends State<SendMessageView> {
  bool isPreviewVisible = true;

  @override
  void dispose() {
    SendMessageCubit.get(context).disposeCtrl();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<SendMessageCubit>(),
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
            success: (state) {
              context.defaultSnackBar(
                "Message sent successfully",
                color: AppColors.successGreen,
                textColor: AppColors.blackText,
              );
            },
            error: (failure) {
              context.defaultSnackBar(
                S.of(context).error(
                      failure.code.toString(),
                      failure.message,
                    ),
                color: AppColors.errorRed,
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
                      const PrayersDropdownMenu(),
                      Gap(20.h),
                      GestureDetector(
                        onTap: () => context.pushNamed(
                          mapView,
                          arguments: MapArgs(
                            location: 1,
                          ),
                        ),
                        child: LocationContainer(
                          title: AppConstants.mosqueAddress != ""
                              ? "Mosque at ${AppConstants.mosqueAddress}"
                              : "Choose Mosque",
                        ),
                      ),
                      Gap(20.h),
                      GestureDetector(
                        onTap: () => context.pushNamed(
                          mapView,
                          arguments: MapArgs(
                            location: 2,
                          ),
                        ),
                        child: LocationContainer(
                          title: AppConstants.burialAddress != ""
                              ? "Burial at ${AppConstants.burialAddress}"
                              : "Burial Location",
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        "Funeral Location",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(10.h),
                      ...List.generate(sendMessageCubit.funeralIndex, (index) {
                        sendMessageCubit.increaseFuneralCtrl();
                        return Column(
                          children: [
                            CustomFormField(
                              stream: sendMessageCubit
                                  .funeralControllers[index].stream,
                              onChanged: (value) {
                                sendMessageCubit
                                    .funeralControllers[index].value = value;
                              },
                              label: "Funeral Location ${index + 1}",
                            ),
                            Gap(10.h),
                            CustomFormField(
                              stream: sendMessageCubit
                                  .funeralLocationControllers[index].stream,
                              onChanged: (value) {
                                sendMessageCubit
                                    .funeralLocationControllers[index]
                                    .value = value;
                              },
                              label: "Paste Location ${index + 1}",
                            ),
                          ],
                        );
                      }),
                      Gap(10.h),
                      GestureDetector(
                        onTap: () {
                          sendMessageCubit.increaseFuneralIndex();
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
                      Text(
                        "Decedent Family",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Gap(10.h),
                      ...List.generate(sendMessageCubit.familyIndex, (index) {
                        sendMessageCubit.increaseFamilyCtrl();
                        return Column(
                          children: [
                            CustomFormField(
                              stream: sendMessageCubit
                                  .nameControllers[index].stream,
                              onChanged: (value) {
                                sendMessageCubit.nameControllers[index].value =
                                    value;
                              },
                              label: "Name ${index + 1}",
                            ),
                            Gap(10.h),
                            CustomFormField(
                              stream: sendMessageCubit
                                  .phoneControllers[index].stream,
                              onChanged: (value) {
                                sendMessageCubit.phoneControllers[index].value =
                                    value;
                              },
                              label: "Phone ${index + 1}",
                            ),
                          ],
                        );
                      }),
                      Gap(10.h),
                      GestureDetector(
                        onTap: () {
                          sendMessageCubit.increaseFamilyIndex();
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
                      isPreviewVisible
                          ? const MessagePreview()
                          : const SizedBox.shrink(),
                      Gap(10.h),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isPreviewVisible = !isPreviewVisible;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(Dimensions.p16),
                          decoration: BoxDecoration(
                            color: AppColors.primaryGold,
                            borderRadius: BorderRadius.circular(Dimensions.r12),
                          ),
                          child: Icon(
                            isPreviewVisible ? MdiIcons.eyeOff : MdiIcons.eye,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      Gap(20.h),
                      CustomBtn(
                        label: "Send",
                        onPressed: () {
                          sendMessageCubit.userSendMessage(
                            SendMessageModel(
                              token: AppConstants.userToken,
                              name: sendMessageCubit.deceasedNameCtrl.value,
                              gender: sendMessageCubit.gender.title,
                              day: sendMessageCubit.weekDay.title,
                              prayer: "${DateTime.now()}",
                              mosqueLocation: AppConstants.mosqueLocation,
                              burialLocation: AppConstants.burialLocation,
                              funeralHqs: <FuneralHqModel>[
                                for (int i = 0;
                                    i < sendMessageCubit.funeralIndex;
                                    i++)
                                  FuneralHqModel(
                                    name: sendMessageCubit
                                        .funeralControllers[i].value,
                                    funeralLocation: const LocationModel(
                                      lat: 0,
                                      lng: 0,
                                    ),
                                  ),
                              ],
                              condolences: <CondolencesModel>[
                                for (int i = 0;
                                    i < sendMessageCubit.familyIndex;
                                    i++)
                                  CondolencesModel(
                                    name: sendMessageCubit
                                        .nameControllers[i].value,
                                    phone: sendMessageCubit
                                        .phoneControllers[i].value,
                                  ),
                              ],
                              supervisorId: 2,
                            ),
                          );
                        },
                      )
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
