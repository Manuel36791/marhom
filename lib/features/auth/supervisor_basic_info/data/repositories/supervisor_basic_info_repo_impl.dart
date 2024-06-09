import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:marhom/features/auth/supervisor_basic_info/data/models/helpers_model.dart';



import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/supervisor_basic_info_entity.dart';
import '../../domain/repositories/supervisor_basic_info_repo.dart';
import '../models/supervisor_basic_info_model.dart';

class SupervisorBasicInfoRepoImpl extends SupervisorBasicInfoRepo {
  final ApiClient supervisorBasicInfoService;

  SupervisorBasicInfoRepoImpl({required this.supervisorBasicInfoService});

  @override
  Future<Either<Failure, SupervisorBasicInfoEntity>> supervisorAddBasicInfo(SupervisorBasicInfoModel supervisorBasicInfoModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorRegisterStepTwo =
            await supervisorBasicInfoService.supervisorBasicInfo(supervisorBasicInfoModel);
        return right(supervisorRegisterStepTwo);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserData>>> getHelpersInfo(HelpersModel helpersModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final helpers =
            await supervisorBasicInfoService.getHelpersInfo(helpersModel);
        return right(helpers);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }


}