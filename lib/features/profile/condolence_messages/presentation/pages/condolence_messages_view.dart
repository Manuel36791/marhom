import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:marhom/core/shared/widgets/custom_app_bar.dart';
import 'package:marhom/core/shared/widgets/state_error_widget.dart';
import 'package:marhom/core/shared/widgets/state_loading_widget.dart';
import 'package:marhom/core/utils/app_text_styles.dart';
import 'package:marhom/core/utils/extensions.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/condolence_messages_cubit.dart';
import '../widgets/message_container.dart';

class CondolenceMessagesView extends StatelessWidget {
  const CondolenceMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    var textPlaceholder =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quippe: habes enim a rhetoribus; Quamquam tu hanc copiosiorem etiam soles dicere. Tu quidem reddes; Haec para/doca illi, nos admirabilia dicamus. Si enim ad populum me vocas, eum. Sequitur disserendi ratio cognitioque naturae;";

    return BlocProvider(
      create: (context) =>
          di.di<CondolenceMessagesCubit>()..getCondolenceMessages(),
      child: BlocConsumer<CondolenceMessagesCubit, CondolenceMessagesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: context.queryWidth.w,
                      padding: const EdgeInsets.all(Dimensions.p8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryGold,
                        borderRadius: BorderRadius.circular(Dimensions.r50),
                      ),
                      child: Center(
                        child: Text(
                          "Condolence Messages",
                          style: CustomTextStyle.kTextStyleF16.copyWith(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                    Gap(10.h),
                    state.maybeWhen(
                      loading: () => const StateLoadingWidget(),
                      success: (state) {
                        return Flexible(
                          fit: FlexFit.loose,
                          child: ListView.builder(
                            // shrinkWrap: true,
                            itemCount: state.data!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(Dimensions.p8),
                                child: MessageContainer(
                                  message: Intl.getCurrentLocale() == "en" ? state.data![index].messageEn! : state.data![index].messageAr!,
                                ),
                              );
                            },
                          ),
                        );
                      },
                      error: (failure) => StateErrorWidget(
                        errCode: failure.code.toString(),
                        err: failure.message,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
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
