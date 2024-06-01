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
      phones: (json['phones'] as List<dynamic>?)
          ?.map((e) => PhonesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mosques: (json['mosques'] as List<dynamic>?)
          ?.map((e) => MosquesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      burialLocations: (json['burial_locations'] as List<dynamic>?)
          ?.map((e) => BurialLocationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      helpers:
          (json['helpers'] as List<dynamic>?)?.map((e) => e as num).toList(),
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
