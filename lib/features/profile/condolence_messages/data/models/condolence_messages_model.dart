// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/condelence_messages_entity.dart';

part 'condolence_messages_model.g.dart';

@JsonSerializable()
class CondolenceMessagesResponseModel extends  CondolenceMessagesResponseEntity {
  @JsonKey(name: "data")
  final List<CondolenceMessagesModel>? data;

  const CondolenceMessagesResponseModel({
    this.data,
  }) : super (
    data: data
  );

  factory CondolenceMessagesResponseModel.fromJson(Map<String, dynamic> json) => _$CondolenceMessagesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CondolenceMessagesResponseModelToJson(this);
}

@JsonSerializable()
class CondolenceMessagesModel extends CondolenceMessagesEntity {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "message_ar")
  final String? messageAr;
  @JsonKey(name: "message_en")
  final String? messageEn;

  const CondolenceMessagesModel({
    this.id,
    this.messageAr,
    this.messageEn,
  }) : super (
    id: id,
    messageAr: messageAr,
    messageEn: messageEn
  );

  factory CondolenceMessagesModel.fromJson(Map<String, dynamic> json) => _$CondolenceMessagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$CondolenceMessagesModelToJson(this);
}
