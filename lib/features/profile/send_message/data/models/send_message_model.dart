// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/location_model.dart';
import '../../domain/entities/send_message_entity.dart';

part 'send_message_model.g.dart';

@JsonSerializable()
class SendMessageModel extends SendMessageEntity {
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? name;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? gender;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final String? day;
  @JsonKey(name: "prayer_appointment", includeFromJson: false, includeToJson: true)
  final String? prayer;
  @JsonKey(name: "mosque",includeFromJson: false, includeToJson: true)
  final dynamic mosqueLocation;
  @JsonKey(name: "burial_location",includeFromJson: false, includeToJson: true)
  final dynamic burialLocation;
  @JsonKey(name: "funeral_headquarters",includeFromJson: false, includeToJson: true)
  final dynamic funeralHqs;
  @JsonKey(includeFromJson: false, includeToJson: true)
  final dynamic condolences;
  @JsonKey(name: "supervisor_id",includeFromJson: false, includeToJson: true)
  final num? supervisorId;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? status;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? message;

  const SendMessageModel({
    this.token,
    this.name,
    this.gender,
    this.day,
    this.prayer,
    this.mosqueLocation,
    this.burialLocation,
    this.funeralHqs,
    this.condolences,
    this.supervisorId,
    this.status,
    this.message,
  }) : super(
          token: token,
          name: name,
          gender: gender,
          day: day,
          prayer: prayer,
          mosqueLocation: mosqueLocation,
          burialLocation: burialLocation,
          funeralHqs: funeralHqs,
          condolences: condolences,
          supervisorId: supervisorId,
          status: status,
          message: message,
        );

  factory SendMessageModel.fromJson(Map<String, dynamic> json) => _$SendMessageModelFromJson(json);
  Map<String, dynamic> toJson() => _$SendMessageModelToJson(this);
}


@JsonSerializable()
class FuneralHqModel extends FuneralHqEntity {
@JsonKey(name: "place", includeFromJson: false, includeToJson: true)
  final String? name;
@JsonKey(name: "location", includeFromJson: false, includeToJson: true)

  final LocationModel? funeralLocation;

  const FuneralHqModel({
    this.name,
    this.funeralLocation,
  }) : super(
          name: name,
          funeralLocation: funeralLocation,
        );

  factory FuneralHqModel.fromJson(Map<String, dynamic> json) => _$FuneralHqModelFromJson(json);
  Map<String, dynamic> toJson() => _$FuneralHqModelToJson(this);

}

@JsonSerializable()
class CondolencesModel extends CondolencesEntity {
  final String? name;
  final String? phone;

  const CondolencesModel({
    this.name,
    this.phone,
  });

  factory CondolencesModel.fromJson(Map<String, dynamic> json) => _$CondolencesModelFromJson(json);
  Map<String, dynamic> toJson() => _$CondolencesModelToJson(this);

}
