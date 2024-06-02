// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_delete_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDeleteAccountModel _$UserDeleteAccountModelFromJson(
        Map<String, dynamic> json) =>
    UserDeleteAccountModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$UserDeleteAccountModelToJson(
        UserDeleteAccountModel instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
