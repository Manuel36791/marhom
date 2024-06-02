import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/user_edit_profile_model.dart';
import '../entities/user_edit_profile_entity.dart';

abstract class UserEditProfileRepo {
  Future<Either<Failure, UserEditProfileEntity>> userEditProfile(UserEditProfileModel userEditProfileModel);
}