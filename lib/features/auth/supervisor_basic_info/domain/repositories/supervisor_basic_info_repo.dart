
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/models/user_data_model.dart';
import '../../data/models/helpers_model.dart';
import '../../data/models/supervisor_basic_info_model.dart';
import '../entities/supervisor_basic_info_entity.dart';

abstract class SupervisorBasicInfoRepo {
  Future<Either<Failure, SupervisorBasicInfoEntity>> supervisorAddBasicInfo(SupervisorBasicInfoModel supervisorBasicInfoModel);
  Future<Either<Failure, List<UserData>>> getHelpersInfo(HelpersModel helpersModel);
}