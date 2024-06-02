import 'package:equatable/equatable.dart';

class UserEditProfileEntity extends Equatable {
  final String? token;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? avatar;
  final String? snapchatId;
  final num? status;
  final String? success;
  final String? error;

  const UserEditProfileEntity({
    this.token,
    this.firstName,
    this.lastName,
    this.phone,
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
        avatar,
        snapchatId,
        status,
        success,
        error,
      ];
}
