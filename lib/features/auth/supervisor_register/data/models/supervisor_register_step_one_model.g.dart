// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_register_step_one_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorRegisterStepOneModel _$SupervisorRegisterStepOneModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorRegisterStepOneModel(
      status: json['status'] as num?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SupervisorRegisterStepOneModelToJson(
        SupervisorRegisterStepOneModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
    };
