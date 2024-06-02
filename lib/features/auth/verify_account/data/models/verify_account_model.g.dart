// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyAccountModel _$VerifyAccountModelFromJson(Map<String, dynamic> json) =>
    VerifyAccountModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$VerifyAccountModelToJson(VerifyAccountModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'code': instance.otp,
    };
