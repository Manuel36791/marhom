import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

// import '../../data/models/user_register_or_login_model.dart';

class UserRegisterOrLoginEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? snapChatId;
  final num? status;
  final String? message;
  final Map<String, dynamic>? error;
  final String? token;
  final UserData? userData;

  const UserRegisterOrLoginEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.snapChatId,
    this.status,
    this.message,
    this.error,
    this.token,
    this.userData,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        snapChatId,
        status,
        message,
        error,
        token,
        userData,
      ];
}
