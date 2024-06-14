import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/condelence_messages_entity.dart';
import '../repositories/codolence_messages_repo.dart';

class CondolenceMessagesUseCase {
  final CondolenceMessagesRepo condolenceMessagesRepo;

  CondolenceMessagesUseCase({required this.condolenceMessagesRepo});

  Future<Either<Failure, CondolenceMessagesResponseEntity>> call() async {
    return await condolenceMessagesRepo.getCondolenceMessages();
  }
}