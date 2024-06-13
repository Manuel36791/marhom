import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/qa_model.dart';
import '../entities/qa_entity.dart';

abstract class QARepo {
  Future<Either<Failure, QADataEntity>> getFAQs(QAModel qAModel);
  Future<Either<Failure, QADataEntity>> getFatwas();
}