// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condolence_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CondolenceMessagesResponseModel _$CondolenceMessagesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CondolenceMessagesResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              CondolenceMessagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CondolenceMessagesResponseModelToJson(
        CondolenceMessagesResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CondolenceMessagesModel _$CondolenceMessagesModelFromJson(
        Map<String, dynamic> json) =>
    CondolenceMessagesModel(
      id: (json['id'] as num?)?.toInt(),
      messageAr: json['message_ar'] as String?,
      messageEn: json['message_en'] as String?,
    );

Map<String, dynamic> _$CondolenceMessagesModelToJson(
        CondolenceMessagesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_ar': instance.messageAr,
      'message_en': instance.messageEn,
    };
