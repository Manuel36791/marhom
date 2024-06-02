// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_edit_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorEditProfileModel _$SupervisorEditProfileModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorEditProfileModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SupervisorEditProfileModelToJson(
        SupervisorEditProfileModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'user_name': instance.userName,
      'email': instance.email,
      'password': instance.pass,
      'password_confirmation': instance.passConf,
      'avatar': instance.avatar,
      'snapchat_id': instance.snapchatId,
    };
