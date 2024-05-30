import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/supervisor_register_step_one_entity.dart';
import '../../domain/entities/supervisor_register_step_two_entity.dart';
import '../../domain/repositories/supervisor_register_repo.dart';
import '../models/supervisor_register_step_one_model.dart';
import '../models/supervisor_register_step_two_model.dart';

class SupervisorRegisterRepoImpl implements SupervisorRegisterRepo {
  final ApiClient supervisorRegisterService;

  SupervisorRegisterRepoImpl({required this.supervisorRegisterService});
  @override
  Future<Either<Failure, SupervisorRegisterStepOneEntity>> supervisorRegisterStepOne(SupervisorRegisterStepOneModel supervisorRegisterStepOneModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorRegisterStepOne =
            await supervisorRegisterService.supervisorRegisterStepOne(supervisorRegisterStepOneModel);
        return right(supervisorRegisterStepOne);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, SupervisorRegisterStepTwoEntity>> supervisorRegisterStepTwo(SupervisorRegisterStepTwoModel supervisorRegisterStepTwoModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorRegisterStepTwo =
            await supervisorRegisterService.supervisorRegisterStepTwo(supervisorRegisterStepTwoModel);
        return right(supervisorRegisterStepTwo);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}