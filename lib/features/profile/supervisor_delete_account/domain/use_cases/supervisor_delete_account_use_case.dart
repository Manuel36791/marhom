import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_delete_account_model.dart';
import '../entities/supervisor_delete_account_entity.dart';
import '../repositories/supervisor_delete_account_repo.dart';

class SupervisorDeleteAccountUseCase {
  final SupervisorDeleteAccountRepo supervisorDeleteAccountRepo;

  SupervisorDeleteAccountUseCase({required this.supervisorDeleteAccountRepo});

  Future<Either<Failure, SupervisorDeleteAccountEntity>> call(SupervisorDeleteAccountModel supervisorDeleteAccountModel) async {
    return await supervisorDeleteAccountRepo.supervisorDeleteAccount(supervisorDeleteAccountModel);
  }

}