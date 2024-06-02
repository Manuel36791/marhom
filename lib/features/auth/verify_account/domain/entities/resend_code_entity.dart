import 'package:equatable/equatable.dart';

class ResendCodeEntity extends Equatable {
  final num? status;
  final String? success, error, phone;

  const ResendCodeEntity({
    this.status,
    this.success,
    this.error,
    this.phone,
  });

  @override
  List<Object?> get props => [
        status,
        success,
        error,
        phone,
      ];
}
