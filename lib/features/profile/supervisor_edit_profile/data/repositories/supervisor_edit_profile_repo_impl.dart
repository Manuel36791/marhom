import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/supervisor_edit_profile_entity.dart';
import '../../domain/repositories/supervisor_edit_profile_repo.dart';
import '../models/supervisor_edit_profile_model.dart';

class SupervisorEditProfileRepoImpl implements SupervisorEditProfileRepo {
  final ApiClient supervisorEditProfileService;

  SupervisorEditProfileRepoImpl({required this.supervisorEditProfileService});

  @override
  Future<Either<Failure, SupervisorEditProfileEntity>> supervisorEditProfile(
      SupervisorEditProfileModel supervisorEditProfileModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final supervisorEditProfile = await supervisorEditProfileService
            .supervisorEditProfile(supervisorEditProfileModel);
        return right(supervisorEditProfile);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
