// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewMessagesModel _$ViewMessagesModelFromJson(Map<String, dynamic> json) =>
    ViewMessagesModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      day: json['day'] as String?,
      prayerApponumment: json['prayer_apponumment'] == null
          ? null
          : DateTime.parse(json['prayer_apponumment'] as String),
      mosque: json['mosque'] as String?,
      burialLocation: json['burial_location'] as String?,
      supervisorId: json['supervisor_id'] as num?,
      userId: json['user_id'] as num?,
      condolences: (json['condolences'] as List<dynamic>?)
          ?.map((e) => CondolenceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      funeralHeadquarters: (json['funeral_headquarters'] as List<dynamic>?)
          ?.map((e) => FuneralHqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ViewMessagesModelToJson(ViewMessagesModel instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

CondolenceModel _$CondolenceModelFromJson(Map<String, dynamic> json) =>
    CondolenceModel(
      id: json['id'] as num?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      messageId: json['message_id'] as num?,
    );

Map<String, dynamic> _$CondolenceModelToJson(CondolenceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'message_id': instance.messageId,
    };

FuneralHqModel _$FuneralHqModelFromJson(Map<String, dynamic> json) =>
    FuneralHqModel(
      id: json['id'] as num?,
      place: json['place'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      messageId: json['message_id'] as num?,
    );

Map<String, dynamic> _$FuneralHqModelToJson(FuneralHqModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'location': instance.location,
      'message_id': instance.messageId,
    };
