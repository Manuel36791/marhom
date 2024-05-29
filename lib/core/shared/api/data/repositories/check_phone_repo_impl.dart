import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../resources/api/data_sources.dart';
import '../../../../resources/api/error_handler.dart';
import '../../../../resources/api/failure_class.dart';
import '../../../../service/api_client.dart';
import '../../domain/entities/check_phone_entity.dart';
import '../../domain/repositories/check_phone_repo.dart';
import '../models/check_phone_model.dart';

class CheckPhoneRepoImpl implements CheckPhoneRepo {
  final ApiClient checkPhoneService;

  CheckPhoneRepoImpl({required this.checkPhoneService});

  @override
  Future<Either<Failure, CheckPhoneEntity>> checkPhone(
      CheckPhoneModel checkPhoneModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final phone =
            await checkPhoneService.checkPhoneExist(checkPhoneModel);
        return right(phone);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
