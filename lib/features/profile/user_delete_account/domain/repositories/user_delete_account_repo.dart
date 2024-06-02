import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_delete_account_model.dart';
import '../entities/user_delete_account_entity.dart';

abstract class UserDeleteAccountRepo {
  Future<Either<Failure, UserDeleteAccountEntity>> userDeleteAccount(UserDeleteAccountModel supervisorDeleteAccountModel);
}