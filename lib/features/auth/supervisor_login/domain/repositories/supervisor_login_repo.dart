import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_login_model.dart';
import '../entities/supervisor_login_entity.dart';

abstract class SupervisorLoginRepo {
  Future<Either<Failure, SupervisorLoginEntity>> supervisorLogin(SupervisorLoginModel supervisorLoginModel);
}