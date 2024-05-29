// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_phone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckPhoneModel _$CheckPhoneModelFromJson(Map<String, dynamic> json) =>
    CheckPhoneModel(
      status: json['status'] as num?,
      success: json['success'] as String?,
      error: json['error'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CheckPhoneModelToJson(CheckPhoneModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
    };
