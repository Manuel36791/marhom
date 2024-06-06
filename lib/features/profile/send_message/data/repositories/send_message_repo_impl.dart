import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/entities/send_message_entity.dart';
import '../../domain/repositories/send_message_repo.dart';
import '../models/send_message_model.dart';

class SendMessageRepoImpl implements SendMessageRepo {
  final ApiClient sendMessageService;

  SendMessageRepoImpl({required this.sendMessageService});
  @override
  Future<Either<Failure, SendMessageEntity>> userSendMessageToSupervisor(SendMessageModel sendMessageModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final sendMessage = await sendMessageService.userSendMessageToSupervisor(sendMessageModel);
        return right(sendMessage);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}