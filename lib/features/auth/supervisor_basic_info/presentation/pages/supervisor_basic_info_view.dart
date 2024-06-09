import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/models/user_data_model_utils.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../generated/l10n.dart';
import '../../supervisor_basic_info.dart';


class SupervisorBasicInfoView extends StatefulWidget {
  const SupervisorBasicInfoView({super.key});

  @override
  State<SupervisorBasicInfoView> createState() =>
      _SupervisorBasicInfoViewState();
}

class _SupervisorBasicInfoViewState extends State<SupervisorBasicInfoView> {
  Map<String, int> selectedHelpers = {};
  List helpers = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<SupervisorBasicInfoCubit>(),
      child: BlocConsumer<SupervisorBasicInfoCubit, SupervisorBasicInfoState>(
        listener: (context, state) {
          state.maybeWhen(
            helpersSuccess: (state) {
              helpers = state;
            },
            orElse: () {},);
        },
        builder: (context, state) {
          SupervisorBasicInfoCubit basicInfoCubit =
          SupervisorBasicInfoCubit.get(context);
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
                              S
                                  .of(context)
                                  .marhom,
                              style: CustomTextStyle.kTextStyleF26,
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        "Basic Info",
                        style: CustomTextStyle.kTextStyleF26,
                      ),
                      Gap(30.h),
                      CustomFormField(
                        stream: basicInfoCubit.cityStream,
                        onChanged: (city) {
                          basicInfoCubit.updateCity(city);
                        },
                        label: "City",
                      ),
                      Gap(20.h),
                      Text(
                        "Mosques",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Gap(10.h),
                      ...List.generate(
                        basicInfoCubit.mosqueIndex,
                            (index) {
                          basicInfoCubit.increaseMosqueCtrl();
                          return Padding(
                            padding: basicInfoCubit.mosqueIndex == 1
                                ? const EdgeInsets.all(0)
                                : const EdgeInsets.only(top: Dimensions.p10),
                            child: Column(
                              children: [
                                CustomFormField(
                                  stream:
                                  basicInfoCubit.mosqueCtrl[index].stream,
                                  onChanged: (value) {
                                    basicInfoCubit.mosqueCtrl[index].value =
                                        value;
                                  },
                                  label: "Name",
                                ),
                                GestureDetector(
                                    onTap: () =>
                                        context.pushNamed(
                                          mapView,
                                          arguments: MapArgs(
                                            location: 3,
                                          ),
                                        ),
                                    child: FormContainer(
                                        title: AppConstants.mosqueLatLng.isEmpty
                                            ? "Location"
                                            : "Location Added")),
                              ],
                            ),
                          );
                        },
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          AddBtn(
                            onTap: () => basicInfoCubit.increaseMosqueIndex(),
                          ),
                          RemoveBtn(
                            onTap: () => basicInfoCubit.decreaseMosqueIndex(),
                          ),
                        ],
                      ),
                      Gap(20.h),
                      Text(
                        "Burial Locations",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Gap(10.h),
                      Gap(10.h),
                      ...List.generate(
                        basicInfoCubit.burialIndex,
                            (index) {
                          basicInfoCubit.increaseBurialCtrl();
                          return Padding(
                            padding: basicInfoCubit.mosqueIndex == 1
                                ? const EdgeInsets.all(0)
                                : const EdgeInsets.only(top: Dimensions.p10),
                            child: Column(
                              children: [
                                CustomFormField(
                                  stream:
                                  basicInfoCubit.burialCtrl[index].stream,
                                  onChanged: (value) {
                                    basicInfoCubit.burialCtrl[index].value =
                                        value;
                                  },
                                  label: "Name",
                                ),
                                GestureDetector(
                                    onTap: () =>
                                        context.pushNamed(
                                          mapView,
                                          arguments: MapArgs(
                                            location: 4,
                                          ),
                                        ),
                                    child: FormContainer(
                                        title: AppConstants.burialLatLng.isEmpty
                                            ? "Location"
                                            : "Location Added")),
                              ],
                            ),
                          );
                        },
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          AddBtn(
                            onTap: () => basicInfoCubit.increaseBurialIndex(),
                          ),
                          RemoveBtn(
                            onTap: () => basicInfoCubit.decreaseBurialIndex(),
                          ),
                        ],
                      ),
                      Gap(20.h),
                      Text(
                        "Helpers",
                        style: CustomTextStyle.kTextStyleF16.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Gap(10.h),
                      GestureDetector(
                          onTap: () =>
                              basicInfoCubit.getHelpersInfo(HelpersModel(
                                token: AppConstants.userToken,
                              )),
                          child: const FormContainer(title: "Helpers")),
                      state.maybeWhen(
                        loading: () => const StateLoadingWidget(),
                        helpersSuccess: (state) {
                          // return CustomScrollView(
                          //   slivers: [
                          //     SliverList.builder(
                          //       itemCount: state.length,
                          //       itemBuilder: (context, index) {
                          //         // print("building item #${index}");
                          //         return HelperContainer(
                          //           onTap: () {
                          //             setState(() {
                          //               basicInfoCubit.updateSelectedHelpers(
                          //                 index,
                          //                 state[index].id!,
                          //                 selectedHelpers,
                          //               );
                          //             });
                          //             logger.i(selectedHelpers);
                          //           },
                          //           helperAvatar: state[index].avatar!,
                          //           helperSnapchat: state[index].snapChatId!,
                          //           helperPhone: state[index].phone!,
                          //           selectedHelpers: selectedHelpers,
                          //           helperId: state[index].id!,
                          //         );
                          //       },
                          //     ),
                          //   ],
                          // );

                          return SizedBox(
                            height: 250.h,
                            child: ListView.builder(
                                padding: const EdgeInsets.all(Dimensions.p8),
                                itemCount: state.length,
                                itemBuilder: (context, index) {
                                  return HelperContainer(
                                    onTap: () {
                                      setState(() {
                                        basicInfoCubit.updateSelectedHelpers(
                                          index,
                                          state[index].id!,
                                          selectedHelpers,
                                        );
                                      });
                                      logger.i(selectedHelpers);
                                    },
                                    helperAvatar: state[index].avatar!,
                                    helperSnapchat: state[index].snapChatId!,
                                    helperPhone: state[index].phone!,
                                    selectedHelpers: selectedHelpers,
                                    helperId: state[index].id!,
                                  );
                                }),
                          );
                        },
                        helpersError: (failure) =>
                            StateErrorWidget(
                              errCode: failure.code.toString(),
                              err: failure.message,
                            ),
                        orElse: () => const SizedBox.shrink(),
                      ),
                      Gap(10.h),
                      AddBtn(
                        onTap: () {},
                      ),
                      Gap(30.h),
                      CustomBtn(
                        label: "Add Info",
                        onPressed: () {
                          basicInfoCubit.updateMosques();
                          basicInfoCubit.updateBurials();
                          basicInfoCubit.updateHelpersPhones(selectedHelpers);

                          basicInfoCubit.supervisorBasicInfo(
                            SupervisorBasicInfoModel(
                                token: AppConstants.userToken,
                                city: basicInfoCubit.cityCtrl.value,
                                supervisorId: UserDataUtils.instance!.id,
                                mosques: basicInfoCubit.mosques,
                                burialLocations: basicInfoCubit.burials,
                                helpers: selectedHelpers,
                                phones: basicInfoCubit.phones,

                            ),
                          );
                          // logger.i(basicInfoCubit.mosques);
                          // logger.i(AppConstants.burialLatLng);
                          // logger.i(phones );
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
