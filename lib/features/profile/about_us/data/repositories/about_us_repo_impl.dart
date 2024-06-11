import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:marhom/core/resources/api/failure_class.dart';

import 'package:marhom/features/profile/about_us/domain/entities/about_us_entity.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/repositories/about_us_repo.dart';

class AboutUsRepoImpl implements AboutUsRepo {
  final ApiClient aboutUsService;

  AboutUsRepoImpl({required this.aboutUsService});

  @override
  Future<Either<Failure, AboutUsEntity>> getAboutUs() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final aboutUs = await aboutUsService.aboutUs();
        return right(aboutUs);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
  }
