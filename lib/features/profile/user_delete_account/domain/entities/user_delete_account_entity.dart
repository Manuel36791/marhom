import 'package:equatable/equatable.dart';

class UserDeleteAccountEntity extends Equatable {
  final String? token;
  final num? status;
  final String? success;
  final String? error;

  const UserDeleteAccountEntity({
    this.token,
    this.status,
    this.success,
    this.error,
  });

  @override
  List<Object?> get props => [
        token,
        status,
        success,
        error,
      ];
}
