// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_register_step_two_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorRegisterStepTwoModel _$SupervisorRegisterStepTwoModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorRegisterStepTwoModel(
      status: json['status'] as num?,
      message: json['message'] as String?,
      error: json['error'] as Map<String, dynamic>?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SupervisorRegisterStepTwoModelToJson(
        SupervisorRegisterStepTwoModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'user_name': instance.userName,
      'email': instance.email,
      'password': instance.pass,
      'password_confirmation': instance.passConf,
      'snapchat_id': instance.snapChatId,
    };
