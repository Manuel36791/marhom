import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/supervisor_basic_info_model.dart';
import '../entities/supervisor_basic_info_entity.dart';
import '../repositories/supervisor_basic_info_repo.dart';

class SupervisorBasicInfoUseCase {
  final SupervisorBasicInfoRepo supervisorBasicInfoRepo;

  SupervisorBasicInfoUseCase({required this.supervisorBasicInfoRepo});

  Future<Either<Failure, SupervisorBasicInfoEntity>> call(
      SupervisorBasicInfoModel supervisorBasicInfoModel) async {
    return await supervisorBasicInfoRepo
        .supervisorAddBasicInfo(supervisorBasicInfoModel);
  }
}
