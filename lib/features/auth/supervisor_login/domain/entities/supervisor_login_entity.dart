import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

class SupervisorLoginEntity extends Equatable {
  final String? userName;
  final String? password;
  final num? status;
  final UserData? user;
  final String? token;

  const SupervisorLoginEntity({
    this.userName,
    this.password,
    this.status,
    this.user,
    this.token,
  });

  @override
  List<Object?> get props => [
        userName,
        password,
        status,
        user,
        token,
      ];
}
