import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';


import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/supervisor_delete_account_entity.dart';
import '../../domain/repositories/supervisor_delete_account_repo.dart';
import '../models/supervisor_delete_account_model.dart';

class SupervisorDeleteAccountRepoImpl implements SupervisorDeleteAccountRepo {
  final ApiClient supervisorDeleteAccountService;

  SupervisorDeleteAccountRepoImpl(
      {required this.supervisorDeleteAccountService});

  @override
  Future<Either<Failure, SupervisorDeleteAccountEntity>>
      supervisorDeleteAccount(
          SupervisorDeleteAccountModel supervisorDeleteAccountModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorDeleteAccount = await supervisorDeleteAccountService
            .supervisorDeleteAccount(supervisorDeleteAccountModel);
        return right(supervisorDeleteAccount);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
