import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/shared/widgets/custom_app_bar.dart';
import 'package:marhom/core/shared/widgets/state_error_widget.dart';
import 'package:marhom/core/shared/widgets/state_loading_widget.dart';
import 'package:marhom/core/utils/app_colors.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/main/supervisor_home/data/models/view_message_model.dart';
import 'package:marhom/features/main/supervisor_home/presentation/pages/mortality_details_view.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/view_messages_cubit.dart';

class SupervisorHome extends StatefulWidget {
  const SupervisorHome({super.key});

  @override
  State<SupervisorHome> createState() => _SupervisorHomeState();
}

class _SupervisorHomeState extends State<SupervisorHome> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ViewMessagesCubit>()
        ..getMessages(
          ViewMessagesModel(
            token: AppConstants.userToken,
          ),
        ),
      child: BlocConsumer<ViewMessagesCubit, ViewMessagesStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: state.maybeWhen(
                  loading: () => const StateLoadingWidget(),
                  success: (state) => ListView.builder(
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => context.pushNamed(
                          mortalityDetailsView,
                          arguments: MortalityDetailsArgs(
                            message: state[index],
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(Dimensions.p16),
                          decoration: BoxDecoration(
                            color: AppColors.primaryGold,
                            borderRadius: BorderRadius.circular(Dimensions.r50),
                          ),
                          child: Center(
                            child: Text(state[index].name!),
                          ),
                        ),
                      );
                    },
                  ),
                  error: (failure) => StateErrorWidget(
                      errCode: failure.code.toString(), err: failure.message),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
