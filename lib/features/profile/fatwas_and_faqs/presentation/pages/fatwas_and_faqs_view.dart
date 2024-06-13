import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:marhom/core/shared/widgets/custom_app_bar.dart';
import 'package:marhom/core/shared/widgets/state_error_widget.dart';
import 'package:marhom/core/shared/widgets/state_loading_widget.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/data/models/qa_model.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/presentation/widgets/expandable_question_tile.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/models/user_data_model_utils.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/qa_cubit.dart';

class FatwasAndFaqsView extends StatefulWidget {
  const FatwasAndFaqsView({super.key});

  @override
  State<FatwasAndFaqsView> createState() => _FatwasAndFaqsViewState();
}

class _FatwasAndFaqsViewState extends State<FatwasAndFaqsView> {
  num isActive = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<QaCubit>()..getFatwas(),
      child: BlocConsumer<QaCubit, QaStates>(
        listener: (context, state) {},
        builder: (context, state) {
          QaCubit qaCubit = QaCubit.get(context);
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(Dimensions.p16),
                        decoration: BoxDecoration(
                            color: AppColors.secondaryWhite,
                            border: Border.all(
                              color: AppColors.primaryGold,
                            ),
                            borderRadius:
                                BorderRadius.circular(Dimensions.r50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isActive = 1;
                                });
                                qaCubit.getFatwas();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(Dimensions.p8),
                                width: context.queryWidth.w * 0.35,
                                decoration: BoxDecoration(
                                    color: isActive == 1
                                        ? AppColors.primaryGold
                                        : AppColors.secondaryWhite,
                                    borderRadius:
                                        BorderRadius.circular(Dimensions.r50)),
                                child: const Center(
                                  child: Text("Fatwas"),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isActive = 1;
                                });
                                qaCubit.getFaqs(
                                  QAModel(
                                    token: AppConstants.userToken,
                                  ),
                                );
                              },
                              child: Container(
                                width: context.queryWidth.w * 0.35,
                                padding: const EdgeInsets.all(Dimensions.p8),
                                decoration: BoxDecoration(
                                    color: isActive == 2
                                        ? AppColors.primaryGold
                                        : AppColors.secondaryWhite,
                                    borderRadius:
                                        BorderRadius.circular(Dimensions.r50)),
                                child: const Center(
                                  child: Text("FAQs"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      state.maybeWhen(
                        loading: () => const StateLoadingWidget(),
                        fatwasSuccess: (state) {
                          return Column(
                            children: [
                              ...List.generate(
                                state.qaData!.length,
                                (index) => const ExpandableQuestionTile(
                                  question: "question",
                                  answer: "question",
                                ),
                              ),
                            ],
                          );
                        },
                        faqsSuccess: (state) {
                           return Column(
                            children: [
                              ...List.generate(
                                state.qaData!.length,
                                    (index) => ExpandableQuestionTile(
                                  question: state.qaData![index].questionEn!,
                                  answer: state.qaData![index].questionEn!,
                                ),
                              ),
                            ],
                          );
                        },
                        error: (failure) => StateErrorWidget(
                            errCode: failure.code.toString(),
                            err: failure.message),
                        orElse: () => const SizedBox.shrink(),
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
