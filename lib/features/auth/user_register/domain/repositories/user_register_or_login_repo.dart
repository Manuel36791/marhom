import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_register_or_login_model.dart';
import '../entities/user_register_or_login_entity.dart';

abstract class UserRegisterOrLoginRepo {
  Future<Either<Failure, UserRegisterOrLoginEntity>> userRegister(UserRegisterOrLoginModel userRegisterModel);
  Future<Either<Failure, UserRegisterOrLoginEntity>> userLogin(UserRegisterOrLoginModel userLoginModel);
}