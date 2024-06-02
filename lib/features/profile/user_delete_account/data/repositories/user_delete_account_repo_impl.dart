import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/user_delete_account_entity.dart';
import '../../domain/repositories/user_delete_account_repo.dart';
import '../models/user_delete_account_model.dart';

class UserDeleteAccountRepoImpl implements UserDeleteAccountRepo {
  final ApiClient userDeleteAccountService;

  UserDeleteAccountRepoImpl({required this.userDeleteAccountService});

  @override
  Future<Either<Failure, UserDeleteAccountEntity>> userDeleteAccount(
      UserDeleteAccountModel userDeleteAccountModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final userDeleteAccount = await userDeleteAccountService
            .userDeleteAccount(userDeleteAccountModel);
        return right(userDeleteAccount);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
