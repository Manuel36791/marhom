// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QAModel _$QAModelFromJson(Map<String, dynamic> json) => QAModel(
      id: json['id'] as num?,
      questionAr: json['question_ar'] as String?,
      questionEn: json['question_en'] as String?,
      answerAr: json['answer_ar'] as String?,
      answerEn: json['question_en'] as String?,
      type: json['type'] as num?,
    );

Map<String, dynamic> _$QAModelToJson(QAModel instance) => <String, dynamic>{
      'token': instance.token,
    };

QADataModel _$QADataModelFromJson(Map<String, dynamic> json) => QADataModel(
      qaData: (json['data'] as List<dynamic>?)
          ?.map((e) => QAModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QADataModelToJson(QADataModel instance) =>
    <String, dynamic>{};
