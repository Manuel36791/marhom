import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../data/models/resend_code_model.dart';
import '../../data/models/verify_account_model.dart';
import '../entities/resend_code_entity.dart';
import '../entities/verify_account_entity.dart';

abstract class VerifyAccountRepo {
  Future<Either<Failure, VerifyAccountEntity>> verifyAccount(VerifyAccountModel verifyAccountModel);
  Future<Either<Failure, ResendCodeEntity>> resendCode(ResendCodeModel resendCodeModel);
}