import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/about_us_entity.dart';
import '../repositories/about_us_repo.dart';

class AboutUsUseCase {
  final AboutUsRepo aboutUsRepo;

  AboutUsUseCase({required this.aboutUsRepo});

  Future<Either<Failure, AboutUsEntity>> call() async {
    return await aboutUsRepo.getAboutUs();
  }
}