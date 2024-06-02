import 'package:equatable/equatable.dart';

class SupervisorEditProfileEntity extends Equatable {
  final String? token;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? userName;
  final String? email;
  final String? pass;
  final String? passConf;
  final String? avatar;
  final String? snapchatId;
  final num? status;
  final String? success;
  final String? error;

  const SupervisorEditProfileEntity({
    this.token,
    this.firstName,
    this.lastName,
    this.phone,
    this.userName,
    this.email,
    this.pass,
    this.passConf,
    this.avatar,
    this.snapchatId,
    this.status,
    this.success,
    this.error,
  });

  @override
  List<Object?> get props => [
        token,
        firstName,
        lastName,
        phone,
        userName,
        email,
        pass,
        passConf,
        avatar,
        snapchatId,
        status,
        success,
        error,
      ];
}
