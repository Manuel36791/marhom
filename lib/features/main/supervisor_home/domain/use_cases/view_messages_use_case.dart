import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/view_message_model.dart';
import '../entities/view_messages_entity.dart';
import '../repositories/view_messages_repo.dart';

class ViewMessagesUseCase {
  final ViewMessagesRepo viewMessagesRepo;

  ViewMessagesUseCase({required this.viewMessagesRepo});

  Future<Either<Failure, List<ViewMessagesEntity>>> call( ViewMessagesModel viewMessagesModel) async {
    return await viewMessagesRepo.getMessages( viewMessagesModel);
  }

}