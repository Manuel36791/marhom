import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/app_text_styles.dart';
import 'package:marhom/features/main/supervisor_home/domain/entities/view_messages_entity.dart';
import 'package:marhom/features/main/supervisor_home/presentation/manager/view_messages_cubit.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';

class MortalityDetailsView extends StatelessWidget {
  final ViewMessagesEntity message;

  const MortalityDetailsView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ViewMessagesCubit>(),
      child: BlocConsumer<ViewMessagesCubit, ViewMessagesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ViewMessagesCubit viewMessagesCubit = ViewMessagesCubit.get(context);
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(Dimensions.p16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryGold,
                        borderRadius: BorderRadius.circular(Dimensions.r50),
                      ),
                      child: Center(
                        child: Text(message.name!),
                      ),
                    ),
                    Gap(10.h),
                    Container(
                      decoration: BoxDecoration(
                          // color: AppColors.primaryGold,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.r12),
                            topRight: Radius.circular(Dimensions.r12),
                          ),
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.black,
                            ),
                          )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text("Burial"),
                              Gap(10.h),
                              // Text(message.prayerApponumment!.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(10.h),
                    Container(
                      padding: const EdgeInsets.all(Dimensions.p16),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.r24),
                            topRight: Radius.circular(Dimensions.r24),
                          ),
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.black,
                            ),
                          )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                               Text("Cemetery",
                                 style: CustomTextStyle.kTextStyleF16
                                     .copyWith(
                                   fontWeight: FontWeight.w700,
                                 ),
                               ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  var cemeteryLocation = viewMessagesCubit
                                      .parseLocation(message.burialLocation!);
                                  viewMessagesCubit.launchMaps(
                                    cemeteryLocation.lat!,
                                    cemeteryLocation.lng!,
                                  );
                                },
                                child: Icon(MdiIcons.mapMarker),
                              )
                            ],
                          ),

                          Divider(
                            thickness: 2.h,
                          ),
                          ...List.generate(
                            message.condolences!.length,
                            (index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    message.condolences![index].name!,
                                    style:
                                        CustomTextStyle.kTextStyleF20.copyWith(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                 Gap(10.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        message.condolences![index].phone!,
                                        style: CustomTextStyle.kTextStyleF20
                                            .copyWith(
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () => viewMessagesCubit
                                            .makePhoneCall(message
                                                .condolences![index].phone!),
                                        child: Icon(
                                          MdiIcons.phone,
                                        ),
                                      ),

                                    ],
                                  ),
                                  Divider(
                                    thickness: 2.h,
                                  )
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
