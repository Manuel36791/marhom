import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/user_delete_account/domain/entities/user_delete_account_entity.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_delete_account_model.dart';
import '../../domain/use_cases/user_delete_account_use_case.dart';

part 'user_delete_account_states.dart';

part 'user_delete_account_cubit.freezed.dart';

class UserDeleteAccountCubit extends Cubit<UserDeleteAccountStates> {
  UserDeleteAccountCubit({required this.userDeleteAccountUseCase}) : super(const UserDeleteAccountStates.initial());

  static UserDeleteAccountCubit get(context) => BlocProvider.of(context);

  final UserDeleteAccountUseCase userDeleteAccountUseCase;

  void userDeleteAccount(
      UserDeleteAccountModel userDeleteAccountModel) async {
    emit(const UserDeleteAccountStates.loading());
    final result = await userDeleteAccountUseCase(userDeleteAccountModel);
    result.fold(
      (l) => emit(
        UserDeleteAccountStates.error(l),
      ),
      (r) => emit(
        UserDeleteAccountStates.success(r),
      ),
    );
  }
}
