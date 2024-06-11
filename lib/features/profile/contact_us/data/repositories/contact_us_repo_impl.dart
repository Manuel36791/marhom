import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';


import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../../domain/repositories/contact_us_repo.dart';

class ContactUsRepoImpl implements ContactUsRepo {
  final ApiClient contactUsService;

  ContactUsRepoImpl({required this.contactUsService});

  @override
  Future<Either<Failure, ContactUsEntity>> contactUs() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final contactUs = await contactUsService.contactUs();
        return right(contactUs);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}