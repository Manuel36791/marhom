import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/about_us_entity.dart';

abstract class AboutUsRepo {
  Future<Either<Failure, AboutUsEntity>> getAboutUs();
}