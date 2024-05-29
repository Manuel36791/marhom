import 'package:dartz/dartz.dart';

import '../../../../resources/api/failure_class.dart';
import '../../data/models/check_phone_model.dart';
import '../entities/check_phone_entity.dart';
import '../repositories/check_phone_repo.dart';

class CheckPhoneUseCase {
  final CheckPhoneRepo checkPhoneRepo;

  CheckPhoneUseCase({required this.checkPhoneRepo});

  Future<Either<Failure, CheckPhoneEntity>> call(
      CheckPhoneModel checkPhoneModel) async {
    return await checkPhoneRepo.checkPhone(checkPhoneModel);
  }
}
