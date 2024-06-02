import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_delete_account_model.dart';
import '../entities/user_delete_account_entity.dart';
import '../repositories/user_delete_account_repo.dart';

class UserDeleteAccountUseCase {
  final UserDeleteAccountRepo userDeleteAccountRepo;

  UserDeleteAccountUseCase({required this.userDeleteAccountRepo});

  Future<Either<Failure, UserDeleteAccountEntity>> call(UserDeleteAccountModel supervisorDeleteAccountModel) async {
    return await userDeleteAccountRepo.userDeleteAccount(supervisorDeleteAccountModel);
  }

}