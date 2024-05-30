// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/supervisor_register_step_two_entity.dart';

part 'supervisor_register_step_two_model.g.dart';

@JsonSerializable()
class SupervisorRegisterStepTwoModel extends SupervisorRegisterStepTwoEntity {
  @JsonKey(name: 'first_name', includeFromJson: false, includeToJson: true)
  final String? firstName;
  @JsonKey(name: 'last_name', includeFromJson: false, includeToJson: true)
  final String? lastName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
  @JsonKey(name: 'user_name', includeFromJson: false, includeToJson: true)
  final String? userName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? email;
  @JsonKey(name: 'password', includeFromJson: false, includeToJson: true)
  final String? pass;
  @JsonKey(
      name: 'password_confirmation',
      includeFromJson: false,
      includeToJson: true)
  final String? passConf;
  @JsonKey(name: 'snapchat_id', includeFromJson: false, includeToJson: true)
  final String? snapChatId;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? message;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final Map<String, dynamic>? error;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final UserData? user;

  const SupervisorRegisterStepTwoModel({
    this.firstName,
    this.lastName,
    this.phone,
    this.userName,
    this.email,
    this.pass,
    this.passConf,
    this.snapChatId,
    this.status,
    this.message,
    this.error,
    this.user,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          userName: userName,
          email: email,
          pass: pass,
          passConf: passConf,
          snapChatId: snapChatId,
          status: status,
          message: message,
          error: error,
          user: user,
  );

  factory SupervisorRegisterStepTwoModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorRegisterStepTwoModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupervisorRegisterStepTwoModelToJson(this);

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        userName,
        email,
        pass,
        passConf,
        snapChatId,
        status,
        message,
        error,
        user,
      ];
}
