import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_delete_account_model.dart';
import '../entities/supervisor_delete_account_entity.dart';

abstract class SupervisorDeleteAccountRepo {
  Future<Either<Failure, SupervisorDeleteAccountEntity>> supervisorDeleteAccount(SupervisorDeleteAccountModel supervisorDeleteAccountModel);
}