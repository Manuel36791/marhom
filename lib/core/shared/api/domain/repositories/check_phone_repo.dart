import 'package:dartz/dartz.dart';

import '../../../../resources/api/failure_class.dart';
import '../../data/models/check_phone_model.dart';
import '../entities/check_phone_entity.dart';

abstract class CheckPhoneRepo {
  Future<Either<Failure, CheckPhoneEntity>> checkPhone(CheckPhoneModel checkPhoneModel);
}