import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/verify_account_model.dart';
import '../entities/verify_account_entity.dart';
import '../repositories/verify_account_repo.dart';

class VerifyAccountUseCase {
  final VerifyAccountRepo verifyAccountRepo;

  VerifyAccountUseCase({required this.verifyAccountRepo});

  Future<Either<Failure, VerifyAccountEntity>> call(VerifyAccountModel verifyAccountModel) async {
    return await verifyAccountRepo.verifyAccount(verifyAccountModel);
  }
}