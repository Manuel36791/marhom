import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_edit_profile_model.dart';
import '../entities/supervisor_edit_profile_entity.dart';
import '../repositories/supervisor_edit_profile_repo.dart';

class SupervisorEditProfileUseCase {

  final SupervisorEditProfileRepo supervisorEditProfileRepo;
  SupervisorEditProfileUseCase({required this.supervisorEditProfileRepo});

  Future<Either<Failure, SupervisorEditProfileEntity>> call(SupervisorEditProfileModel supervisorEditProfileModel) async {
    return await supervisorEditProfileRepo.supervisorEditProfile(supervisorEditProfileModel);
  }

}