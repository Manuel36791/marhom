import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/slider_entity.dart';
import '../repositories/slieder_repo.dart';

class SlidersUseCase {
  final SlidersRepo _slidersRepo;

  SlidersUseCase({required SlidersRepo slidersRepo})
      : _slidersRepo = slidersRepo;

  Future<Either<Failure, SlidersResponseEntity>> call() async {
    return await _slidersRepo.sliders();
  }
}
