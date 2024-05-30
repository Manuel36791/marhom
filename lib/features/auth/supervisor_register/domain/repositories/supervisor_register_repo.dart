import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_register_step_one_model.dart';
import '../../data/models/supervisor_register_step_two_model.dart';
import '../entities/supervisor_register_step_one_entity.dart';
import '../entities/supervisor_register_step_two_entity.dart';

abstract class SupervisorRegisterRepo {
  Future<Either<Failure, SupervisorRegisterStepOneEntity>> supervisorRegisterStepOne(SupervisorRegisterStepOneModel supervisorRegisterStepOneModel);
  Future<Either<Failure, SupervisorRegisterStepTwoEntity>> supervisorRegisterStepTwo(SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel);
}