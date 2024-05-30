// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_or_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegisterOrLoginModel _$UserRegisterOrLoginModelFromJson(
        Map<String, dynamic> json) =>
    UserRegisterOrLoginModel(
      status: json['status'] as num?,
      message: json['message'] as String?,
      error: json['error'] as Map<String, dynamic>?,
      token: json['token'] as String?,
      userData: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRegisterOrLoginModelToJson(
        UserRegisterOrLoginModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'snapchat_id': instance.snapChatId,
    };
