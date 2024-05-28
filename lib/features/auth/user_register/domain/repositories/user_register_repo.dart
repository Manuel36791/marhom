import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_register_model.dart';
import '../entities/user_register_entity.dart';

abstract class UserRegisterRepo {
  Future<Either<Failure, UserRegisterEntity>> registerUser(UserRegisterModel userRegisterModel);
}