import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:marhom/core/resources/api/failure_class.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/data/models/qa_model.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/domain/entities/qa_entity.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/domain/repositories/aq_repo.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/service/api_client.dart';

class QARepoImpl implements QARepo {
  final ApiClient qaService;

  QARepoImpl({required this.qaService});
  @override
  Future<Either<Failure, QADataEntity>> getFAQs(QAModel qAModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final faqs = await qaService.getFaqs(qAModel);
        return right(faqs);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, QADataEntity>> getFatwas() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final fatwas = await qaService.getFatwas();
        return right(fatwas);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}