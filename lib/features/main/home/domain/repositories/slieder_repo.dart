import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/slider_entity.dart';

abstract class SlidersRepo {
  Future<Either<Failure, SlidersResponseEntity>> sliders();
}