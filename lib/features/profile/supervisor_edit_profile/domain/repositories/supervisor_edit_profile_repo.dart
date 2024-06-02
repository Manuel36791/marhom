import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_edit_profile_model.dart';
import '../entities/supervisor_edit_profile_entity.dart';

abstract class SupervisorEditProfileRepo {
  Future<Either<Failure, SupervisorEditProfileEntity>> supervisorEditProfile(SupervisorEditProfileModel supervisorEditProfileModel);
}