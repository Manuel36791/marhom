import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_register_step_two_model.dart';
import '../entities/supervisor_register_step_two_entity.dart';
import '../repositories/supervisor_register_repo.dart';

class SupervisorRegisterStepTwoUseCase {
  final SupervisorRegisterRepo supervisorRegisterRepo;

  SupervisorRegisterStepTwoUseCase({required this.supervisorRegisterRepo});

  Future<Either<Failure, SupervisorRegisterStepTwoEntity>> call(SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel) async {
    return await supervisorRegisterRepo.supervisorRegisterStepTwo(supervisorRegisterStepTwoModel);
  }

}