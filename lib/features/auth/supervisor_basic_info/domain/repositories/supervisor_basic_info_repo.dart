
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_basic_info_model.dart';
import '../entities/supervisor_basic_info_entity.dart';

abstract class SupervisorBasicInfoRepo {
  Future<Either<Failure, SupervisorBasicInfoEntity>> supervisorAddBasicInfo(SupervisorBasicInfoModel supervisorBasicInfoModel);
}