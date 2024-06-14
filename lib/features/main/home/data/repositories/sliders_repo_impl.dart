import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/slider_entity.dart';
import '../../domain/repositories/slieder_repo.dart';

class SlidersRepoImpl implements SlidersRepo {
  final ApiClient _slidersService;

  SlidersRepoImpl({required ApiClient slidersService}) : _slidersService = slidersService;

  @override
  Future<Either<Failure, SlidersResponseEntity>> sliders() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final sliders = await _slidersService.getSliders();
        return right(sliders);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}