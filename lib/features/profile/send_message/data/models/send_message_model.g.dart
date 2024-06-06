// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessageModel _$SendMessageModelFromJson(Map<String, dynamic> json) =>
    SendMessageModel(
      status: json['status'] as num?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SendMessageModelToJson(SendMessageModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'name': instance.name,
      'gender': instance.gender,
      'day': instance.day,
      'prayer_appointment': instance.prayer,
      'mosque': instance.mosqueLocation,
      'burial_location': instance.burialLocation,
      'funeral_headquarters': instance.funeralHqs,
      'condolences': instance.condolences,
      'supervisor_id': instance.supervisorId,
    };

FuneralHqModel _$FuneralHqModelFromJson(Map<String, dynamic> json) =>
    FuneralHqModel(
      name: json['place'] as String?,
      funeralLocation: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FuneralHqModelToJson(FuneralHqModel instance) =>
    <String, dynamic>{};

CondolencesModel _$CondolencesModelFromJson(Map<String, dynamic> json) =>
    CondolencesModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$CondolencesModelToJson(CondolencesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
    };
