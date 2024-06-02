import 'package:equatable/equatable.dart';

class VerifyAccountEntity extends Equatable {
  final num? status;
  final String? success, phone, otp, error;

  const VerifyAccountEntity({
    this.status,
    this.success,
    this.phone,
    this.otp,
    this.error,
  });

  @override
  List<Object?> get props => [
        status,
        success,
        phone,
        otp,
        error,
      ];
}
