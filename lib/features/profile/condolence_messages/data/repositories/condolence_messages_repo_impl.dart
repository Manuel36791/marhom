import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:marhom/core/resources/api/failure_class.dart';
import 'package:marhom/core/service/api_client.dart';
import 'package:marhom/features/profile/condolence_messages/domain/entities/condelence_messages_entity.dart';
import 'package:marhom/features/profile/condolence_messages/domain/repositories/codolence_messages_repo.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';

class CondolenceMessagesRepoImpl implements CondolenceMessagesRepo {
  final ApiClient condolenceMessagesService;

  CondolenceMessagesRepoImpl({required this.condolenceMessagesService});
  @override
  Future<Either<Failure, CondolenceMessagesResponseEntity>> getCondolenceMessages() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final messages = await condolenceMessagesService.getCondolenceMessages();
        return right(messages);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }

}