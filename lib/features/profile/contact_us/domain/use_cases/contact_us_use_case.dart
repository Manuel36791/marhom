import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/contact_us_entity.dart';
import '../repositories/contact_us_repo.dart';

class ContactUsUseCase {
  final ContactUsRepo contactUsRepo;

  ContactUsUseCase({required this.contactUsRepo});

  Future<Either<Failure, ContactUsEntity>> call() async {
    return await contactUsRepo.contactUs();
  }

}