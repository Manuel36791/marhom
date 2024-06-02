// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/supervisor_login_entity.dart';

part 'supervisor_login_model.g.dart';

@JsonSerializable()
class SupervisorLoginModel extends SupervisorLoginEntity {
  @JsonKey(name: "user_name", includeToJson: true, includeFromJson: false)
  final String? userName;
  final String? password;
  final num? status;
  final UserData? user;
  final String? token;

  const SupervisorLoginModel({
    this.userName,
    this.password,
    this.status,
    this.user,
    this.token,
  }) : super(
          userName: userName,
          password: password,
          status: status,
          user: user,
          token: token,
        );

  factory SupervisorLoginModel.fromJson(Map<String, dynamic> json) => _$SupervisorLoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$SupervisorLoginModelToJson(this);
}
