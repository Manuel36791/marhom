import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/condelence_messages_entity.dart';

abstract class CondolenceMessagesRepo {
  Future<Either<Failure, CondolenceMessagesResponseEntity>> getCondolenceMessages();
}