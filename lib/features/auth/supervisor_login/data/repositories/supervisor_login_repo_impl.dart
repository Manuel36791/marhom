import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/supervisor_login_entity.dart';
import '../../domain/repositories/supervisor_login_repo.dart';
import '../models/supervisor_login_model.dart';

class SupervisorLoginRepoImpl implements SupervisorLoginRepo {
  final ApiClient supervisorLoginService;

  SupervisorLoginRepoImpl({required this.supervisorLoginService});

  @override
  Future<Either<Failure, SupervisorLoginEntity>> supervisorLogin(SupervisorLoginModel supervisorLoginModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorLogin =
            await supervisorLoginService.supervisorLogin(supervisorLoginModel);
        return right(supervisorLogin);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}