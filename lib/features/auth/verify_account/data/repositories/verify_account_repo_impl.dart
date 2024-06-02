import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/resend_code_entity.dart';
import '../../domain/entities/verify_account_entity.dart';
import '../../domain/repositories/verify_account_repo.dart';
import '../models/resend_code_model.dart';
import '../models/verify_account_model.dart';

class VerifyAccountRepoImpl implements VerifyAccountRepo {
  final ApiClient verifyAccountService;

  VerifyAccountRepoImpl({
    required this.verifyAccountService,
  });

  @override
  Future<Either<Failure, VerifyAccountEntity>> verifyAccount(
      VerifyAccountModel verifyAccountModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final verifyAccount =
            await verifyAccountService.verifyAccount(verifyAccountModel);
        return right(verifyAccount);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, ResendCodeEntity>> resendCode(ResendCodeModel resendCodeModel) async {
    final result = await (Connectivity().checkConnectivity());

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final resendCode = await verifyAccountService.resendVerificationCode(resendCodeModel);
        return right(resendCode);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
