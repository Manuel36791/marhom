// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/phones_model.dart';

part 'phones_model.g.dart';

@JsonSerializable()
class PhonesModel extends PhonesEntity {
  final String? phones;

  const PhonesModel({this.phones,}) : super(
    phones: phones,
  );

  factory PhonesModel.fromJson(Map<String, dynamic> json) => _$PhonesModelFromJson(json);

  Map<String, dynamic> toJson() => _$PhonesModelToJson(this);
}
