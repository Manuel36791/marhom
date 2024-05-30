import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

class SupervisorRegisterStepOneEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final num? status;
  final UserData? user;

  const SupervisorRegisterStepOneEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.status,
    this.user,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        status,
        user,
      ];
}
