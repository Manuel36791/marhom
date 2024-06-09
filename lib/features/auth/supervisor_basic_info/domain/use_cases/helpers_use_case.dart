import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/models/user_data_model.dart';
import '../../data/models/helpers_model.dart';
import '../repositories/supervisor_basic_info_repo.dart';

class HelpersUseCase {
  final SupervisorBasicInfoRepo supervisorBasicInfoRepo;

  HelpersUseCase({required this.supervisorBasicInfoRepo});

  Future<Either<Failure, List<UserData>>> call(
      HelpersModel helpersModel) async {
    return await supervisorBasicInfoRepo.getHelpersInfo(helpersModel);
  }
}
