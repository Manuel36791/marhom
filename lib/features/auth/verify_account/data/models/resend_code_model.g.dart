// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendCodeModel _$ResendCodeModelFromJson(Map<String, dynamic> json) =>
    ResendCodeModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ResendCodeModelToJson(ResendCodeModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };
