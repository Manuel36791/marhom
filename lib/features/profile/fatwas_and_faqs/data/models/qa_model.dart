// ignore_for_file: annotate_overrides, overridden_fields
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/qa_entity.dart';

part 'qa_model.g.dart';

@JsonSerializable()
class QAModel extends QAEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? id;
  @JsonKey(name: "question_ar", includeFromJson: true, includeToJson: false)
  final String? questionAr;
  @JsonKey(name: "question_en", includeFromJson: true, includeToJson: false)
  final String? questionEn;
  @JsonKey(name: "answer_ar", includeFromJson: true, includeToJson: false)
  final String? answerAr;
  @JsonKey(name: "question_en", includeFromJson: true, includeToJson: false)
  final String? answerEn;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? type;

  const QAModel({
    this.token,
    this.id,
    this.questionAr,
    this.questionEn,
    this.answerAr,
    this.answerEn,
    this.type,
  }) : super(
          token: token,
          id: id,
          questionAr: questionAr,
          questionEn: questionEn,
          answerAr: answerAr,
          answerEn: answerEn,
          type: type,
        );

  factory QAModel.fromJson(Map<String, dynamic> json) =>
      _$QAModelFromJson(json);

  Map<String, dynamic> toJson() => _$QAModelToJson(this);
}

@JsonSerializable()
class QADataModel extends QADataEntity {
  @JsonKey(name: "data", includeFromJson: true, includeToJson: false)
  final List<QAModel>? qaData;

  const QADataModel({
    this.qaData,
  }) : super(
          qaData: qaData,
        );

  factory QADataModel.fromJson(Map<String, dynamic> json) =>
      _$QADataModelFromJson(json);

  Map<String, dynamic> toJson() => _$QADataModelToJson(this);
}
