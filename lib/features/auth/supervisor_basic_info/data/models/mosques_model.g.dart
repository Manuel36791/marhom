// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mosques_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MosquesModel _$MosquesModelFromJson(Map<String, dynamic> json) => MosquesModel(
      name: json['name'] as String?,
      city: json['city'] as String?,
      location: json['location'] == null
          ? null
          : CoordinatesModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MosquesModelToJson(MosquesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'location': instance.location,
    };
