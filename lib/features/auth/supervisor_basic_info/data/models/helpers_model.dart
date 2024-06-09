// ignore_for_file: overridden_fields, annotate_overrides

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/helpers_entity.dart';

part 'helpers_model.g.dart';

@JsonSerializable()
class HelpersModel extends HelpersEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;

  const HelpersModel({
    this.token,
  }) : super(
          token: token,
        );

  factory HelpersModel.fromJson(Map<String, dynamic> json) =>
      _$HelpersModelFromJson(json);

  Map<String, dynamic> toJson() => _$HelpersModelToJson(this);
}
