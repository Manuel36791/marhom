import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

// import '../../data/models/user_register_or_login_model.dart';

class UserRegisterOrLoginEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? snapChatId;
  final num? status;
  final String? success;
  final Map<String, dynamic>? error;
  final String? token;
  final UserData? userData;

  const UserRegisterOrLoginEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.snapChatId,
    this.status,
    this.success,
    this.error,
    this.token,
    this.userData,
  });

  @override
  List<Object?> get props =>
      [firstName, lastName, phone, snapChatId, status, success, error, token, userData,];
}