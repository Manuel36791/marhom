import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/user_edit_profile_entity.dart';
import '../../domain/repositories/user_edit_profile_repo.dart';
import '../models/user_edit_profile_model.dart';

class UserEditProfileRepoImpl implements UserEditProfileRepo {
  final ApiClient userEditProfileService;

  UserEditProfileRepoImpl({required this.userEditProfileService});

  @override
  Future<Either<Failure, UserEditProfileEntity>> userEditProfile(
      UserEditProfileModel userEditProfileModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final userEditProfile =
            await userEditProfileService.userEditProfile(userEditProfileModel);
        return right(userEditProfile);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
