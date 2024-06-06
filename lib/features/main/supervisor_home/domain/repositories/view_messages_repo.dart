import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/view_message_model.dart';
import '../entities/view_messages_entity.dart';

abstract class ViewMessagesRepo {
  Future<Either<Failure, List<ViewMessagesEntity>>> getMessages( ViewMessagesModel viewMessagesModel);
}