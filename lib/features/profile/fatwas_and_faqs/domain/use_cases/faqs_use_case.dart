import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/qa_model.dart';
import '../entities/qa_entity.dart';
import '../repositories/aq_repo.dart';

class FAQsUseCase {
  final QARepo qaRepo;
  FAQsUseCase({required this.qaRepo});

  Future<Either<Failure, QADataEntity>> call(QAModel qAModel) async {
    return await qaRepo.getFAQs( qAModel);
  }

}