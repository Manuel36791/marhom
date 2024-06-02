// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_delete_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorDeleteAccountModel _$SupervisorDeleteAccountModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorDeleteAccountModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SupervisorDeleteAccountModelToJson(
        SupervisorDeleteAccountModel instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
