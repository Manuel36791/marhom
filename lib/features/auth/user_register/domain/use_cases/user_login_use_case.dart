import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_register_or_login_model.dart';
import '../entities/user_register_or_login_entity.dart';
import '../repositories/user_register_or_login_repo.dart';

class UserLoginUseCase {
  final UserRegisterOrLoginRepo userRegisterOrLoginRepo;

  UserLoginUseCase({required this.userRegisterOrLoginRepo});

  Future<Either<Failure, UserRegisterOrLoginEntity>> call(UserRegisterOrLoginModel userRegisterModel) async {
    return await userRegisterOrLoginRepo.userLogin(userRegisterModel);
  }

}