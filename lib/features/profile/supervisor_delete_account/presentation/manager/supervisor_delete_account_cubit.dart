import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/supervisor_delete_account/domain/entities/supervisor_delete_account_entity.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_delete_account_model.dart';
import '../../domain/use_cases/supervisor_delete_account_use_case.dart';

part 'supervisor_delete_account_states.dart';
part 'supervisor_delete_account_cubit.freezed.dart';

class SupervisorDeleteAccountCubit extends Cubit<SupervisorDeleteAccountStates> {
  SupervisorDeleteAccountCubit({required this.supervisorDeleteAccountUseCase}) : super(const SupervisorDeleteAccountStates.initial());

  static SupervisorDeleteAccountCubit get(context) => BlocProvider.of(context);

  final SupervisorDeleteAccountUseCase supervisorDeleteAccountUseCase;
  deleteAccount(SupervisorDeleteAccountModel supervisorDeleteAccountModel) async {
    emit(const SupervisorDeleteAccountStates.loading());

    final send = await supervisorDeleteAccountUseCase(supervisorDeleteAccountModel);

    send.fold(
          (l) => {
        emit(
          SupervisorDeleteAccountStates.error(l),
        ),
      },
          (r) => {

        emit(
          SupervisorDeleteAccountStates.success(r),
        ),
      },
    );
  }
}
