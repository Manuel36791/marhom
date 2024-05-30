// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/supervisor_register_step_one_entity.dart';

part 'supervisor_register_step_one_model.g.dart';

@JsonSerializable()
class SupervisorRegisterStepOneModel extends SupervisorRegisterStepOneEntity {
  @JsonKey(name: 'first_name', includeFromJson: false, includeToJson: true)
  final String? firstName;
  @JsonKey(name: 'last_name', includeFromJson: false, includeToJson: true)
  final String? lastName;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? phone;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final UserData? user;

  const SupervisorRegisterStepOneModel({
    this.firstName,
    this.lastName,
    this.phone,
    this.status,
    this.user,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          status: status,
          user: user,
        );

  factory SupervisorRegisterStepOneModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorRegisterStepOneModelFromJson(json);

  Map<String, dynamic> toJson() => _$SupervisorRegisterStepOneModelToJson(this);

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        phone,
        status,
        user,
      ];
}
