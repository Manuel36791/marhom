import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/send_message_model.dart';
import '../entities/send_message_entity.dart';
import '../repositories/send_message_repo.dart';

class SendMessageUseCase {
  final SendMessageRepo sendMessageRepo;

  SendMessageUseCase({required this.sendMessageRepo});

  Future<Either<Failure, SendMessageEntity>> call(SendMessageModel sendMessageModel) async {
    return await sendMessageRepo.userSendMessageToSupervisor(sendMessageModel);
  }

}