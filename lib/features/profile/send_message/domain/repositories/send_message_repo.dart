
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/send_message_model.dart';
import '../entities/send_message_entity.dart';

abstract class SendMessageRepo {
  Future<Either<Failure, SendMessageEntity>> userSendMessageToSupervisor(SendMessageModel sendMessageModel);
}