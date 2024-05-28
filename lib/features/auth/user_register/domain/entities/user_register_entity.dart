import 'package:equatable/equatable.dart';

// import '../../data/models/user_register_model.dart';

class UserRegisterEntity extends Equatable {
  // static UserRegisterModel? _instance;
  //
  // static UserRegisterModel? get instance => _instance;
  //
  //  fromJson(Map<String, dynamic> json) {
  //   return _instance = UserRegisterModel.fromJson(json);
  // }
  //
  // Map<String, dynamic>? toJson() {
  //   return _instance?.toJson();
  // }
  //
  // static void setInstance(UserRegisterModel instance) {
  //   _instance = instance;
  // }

  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? snapChatId;
  final num? status;
  final String? success;
  final Map<String, dynamic>? error;

  const UserRegisterEntity({
    this.firstName,
    this.lastName,
    this.phone,
    this.snapChatId,
    this.status,
    this.success,
    this.error,
  });

  @override
  List<Object?> get props =>
      [firstName, lastName, phone, snapChatId, status, success, error,];
}