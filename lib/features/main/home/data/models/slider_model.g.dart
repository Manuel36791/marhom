// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlidersResponseModel _$SlidersResponseModelFromJson(
        Map<String, dynamic> json) =>
    SlidersResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SlidersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SlidersResponseModelToJson(
        SlidersResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SlidersModel _$SlidersModelFromJson(Map<String, dynamic> json) => SlidersModel(
      slider: json['slider'] as String?,
    );

Map<String, dynamic> _$SlidersModelToJson(SlidersModel instance) =>
    <String, dynamic>{
      'slider': instance.slider,
    };
