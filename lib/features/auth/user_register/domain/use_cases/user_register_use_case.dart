import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_register_model.dart';
import '../entities/user_register_entity.dart';
import '../repositories/user_register_repo.dart';

class UserRegisterUseCase {
  final UserRegisterRepo userRegisterRepo;

  UserRegisterUseCase({required this.userRegisterRepo});

  Future<Either<Failure, UserRegisterEntity>> call(UserRegisterModel userRegisterModel) async {
    return await userRegisterRepo.registerUser(userRegisterModel);
  }

}