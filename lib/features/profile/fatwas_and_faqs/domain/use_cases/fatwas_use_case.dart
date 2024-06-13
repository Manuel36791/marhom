import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/qa_entity.dart';
import '../repositories/aq_repo.dart';

class FatwasUseCase {
  final QARepo qaRepo;
  FatwasUseCase({required this.qaRepo});

  Future<Either<Failure, QADataEntity>> call() async {
    return await qaRepo.getFatwas();
  }

}