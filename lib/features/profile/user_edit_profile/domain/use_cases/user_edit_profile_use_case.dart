import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_edit_profile_model.dart';
import '../entities/user_edit_profile_entity.dart';
import '../repositories/user_edit_profile_repo.dart';

class UserEditProfileUseCase {

  final UserEditProfileRepo userEditProfileRepo;
  UserEditProfileUseCase({required this.userEditProfileRepo});

  Future<Either<Failure, UserEditProfileEntity>> call(UserEditProfileModel userEditProfileModel) async {
    return await userEditProfileRepo.userEditProfile(userEditProfileModel);
  }

}