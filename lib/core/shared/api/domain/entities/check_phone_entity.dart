import 'package:equatable/equatable.dart';

class CheckPhoneEntity extends Equatable {
  final String? phone;
  final num? status;
  final String? success;
  final Map<String, dynamic>? error;

  const CheckPhoneEntity({
    this.phone,
    this.status,
    this.success,
    this.error,
  });

  @override
  List<Object?> get props => [
        phone,
        status,
        success,
        error,
      ];
}
