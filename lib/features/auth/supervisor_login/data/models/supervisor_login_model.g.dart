// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorLoginModel _$SupervisorLoginModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorLoginModel(
      password: json['password'] as String?,
      status: json['status'] as num?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$SupervisorLoginModelToJson(
        SupervisorLoginModel instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'password': instance.password,
      'status': instance.status,
      'user': instance.user,
      'token': instance.token,
    };
