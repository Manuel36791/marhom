// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burial_locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BurialLocationsModel _$BurialLocationsModelFromJson(
        Map<String, dynamic> json) =>
    BurialLocationsModel(
      name: json['name'] as String?,
      city: json['city'] as String?,
      location: json['location'] == null
          ? null
          : CoordinatesModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BurialLocationsModelToJson(
        BurialLocationsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'location': instance.location,
    };
