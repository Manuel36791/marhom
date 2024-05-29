import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/user_register_entity.dart';
import '../../domain/repositories/user_register_repo.dart';
import '../models/user_register_model.dart';

class UserRegisterRepoImpl implements UserRegisterRepo {
  final ApiClient userRegisterService;

  UserRegisterRepoImpl({required this.userRegisterService});

  @override
  Future<Either<Failure, UserRegisterEntity>> registerUser(
      UserRegisterModel userRegisterModel) async {
    final result = await (Connectivity().checkConnectivity());

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final register =
            await userRegisterService.userRegister(userRegisterModel);
        return right(register);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
