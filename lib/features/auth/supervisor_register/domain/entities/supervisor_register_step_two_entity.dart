import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

class SupervisorRegisterStepTwoEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? userName;
  final String? email;
  final String? pass;
  final String? passConf;
  final String? snapChatId;
  final num? status;
  final String? message;
  final Map<String, dynamic>? error;
  final UserData? user;

  const SupervisorRegisterStepTwoEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.userName,
    this.email,
    this.pass,
    this.passConf,
    this.snapChatId,
    this.status,
    this.message,
    this.error,
    this.user,
  });

  @override
  List<Object?> get props =>
      [
        firstName,
        lastName,
        phone,
        userName,
        email,
        pass,
        passConf,
        snapChatId,
        status,
        message,
        error,
        user,
      ];
}