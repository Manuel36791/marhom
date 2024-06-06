
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import 'package:marhom/core/resources/api/failure_class.dart';

import 'package:marhom/features/main/supervisor_home/data/models/view_message_model.dart';

import 'package:marhom/features/main/supervisor_home/domain/entities/view_messages_entity.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/service/api_client.dart';
import '../../domain/repositories/view_messages_repo.dart';

class ViewMessagesRepoImpl implements ViewMessagesRepo {
  final ApiClient viewMessagesService;

  ViewMessagesRepoImpl({required this.viewMessagesService});

  @override
  Future<Either<Failure, List<ViewMessagesEntity>>> getMessages(ViewMessagesModel viewMessagesModel) async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.mobile) ||
        result.contains(ConnectivityResult.wifi)) {
      try {
        final messages = await viewMessagesService.supervisorGetMessages(viewMessagesModel);
        return right(messages);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}