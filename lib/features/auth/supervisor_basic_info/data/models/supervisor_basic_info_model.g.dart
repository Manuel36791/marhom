// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_basic_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupervisorBasicInfoModel _$SupervisorBasicInfoModelFromJson(
        Map<String, dynamic> json) =>
    SupervisorBasicInfoModel(
      token: json['token'] as String?,
      city: json['city'] as String?,
      phones: json['phones'],
      mosques: json['mosques'],
      burialLocations: json['burial_locations'],
      helpers: (json['helpers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      supervisorId: json['supervisor_id'] as num?,
    );

Map<String, dynamic> _$SupervisorBasicInfoModelToJson(
        SupervisorBasicInfoModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'city': instance.city,
      'phones': instance.phones,
      'mosques': instance.mosques,
      'burial_locations': instance.burialLocations,
      'helpers': instance.helpers,
      'supervisor_id': instance.supervisorId,
    };
