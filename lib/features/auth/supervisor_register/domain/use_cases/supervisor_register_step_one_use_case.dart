import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_register_step_one_model.dart';
import '../entities/supervisor_register_step_one_entity.dart';
import '../repositories/supervisor_register_repo.dart';

class SupervisorRegisterStepOneUseCase {
  final SupervisorRegisterRepo supervisorRegisterRepo;

  SupervisorRegisterStepOneUseCase({required this.supervisorRegisterRepo});

  Future<Either<Failure, SupervisorRegisterStepOneEntity>> call(SupervisorRegisterStepOneModel supervisorRegisterStepOneModel) async {
    return await supervisorRegisterRepo.supervisorRegisterStepOne(supervisorRegisterStepOneModel);
  }


}