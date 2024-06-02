import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/resend_code_model.dart';
import '../entities/resend_code_entity.dart';
import '../repositories/verify_account_repo.dart';

class VerifyResendCodeUseCase {
  final VerifyAccountRepo verifyAccountRepo;

  VerifyResendCodeUseCase({required this.verifyAccountRepo});

  Future<Either<Failure, ResendCodeEntity>> call(ResendCodeModel resendCodeModel) async {
    return await verifyAccountRepo.resendCode(resendCodeModel);
  }
}