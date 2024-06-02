import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_login_model.dart';
import '../entities/supervisor_login_entity.dart';
import '../repositories/supervisor_login_repo.dart';

class SupervisorLoginUseCase {
  final SupervisorLoginRepo supervisorLoginRepo;
  SupervisorLoginUseCase({required this.supervisorLoginRepo});

  Future<Either<Failure, SupervisorLoginEntity>> call(
      SupervisorLoginModel supervisorLoginModel) async {
    return await supervisorLoginRepo.supervisorLogin(supervisorLoginModel);
  }
}