// ignore_for_file: annotate_overrides, overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/shared/models/location_model.dart';
import '../../domain/entities/view_messages_entity.dart';

part 'view_message_model.g.dart';

@JsonSerializable()
class ViewMessagesModel extends ViewMessagesEntity {
  @JsonKey(name: "token", includeFromJson: false, includeToJson: true)
  final String? token;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final num? id;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? name;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? gender;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? day;
  @JsonKey(name: "prayer_apponumment", includeFromJson: true, includeToJson: false)
  final DateTime? prayerApponumment;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String? mosque;
  @JsonKey(name: "burial_location", includeFromJson: true, includeToJson: false)
  final String? burialLocation;
  @JsonKey(name: "supervisor_id",includeFromJson: true, includeToJson: false)
  final num? supervisorId;
  @JsonKey(name: "user_id",includeFromJson: true, includeToJson: false)
  final num? userId;
  @JsonKey(includeFromJson: true, includeToJson: false)
  final List<CondolenceModel>? condolences;
  @JsonKey(name: "funeral_headquarters", includeFromJson: true, includeToJson: false)
  final List<FuneralHqModel>? funeralHeadquarters;

  const ViewMessagesModel({
    this.token,
    this.id,
    this.name,
    this.gender,
    this.day,
    this.prayerApponumment,
    this.mosque,
    this.burialLocation,
    this.supervisorId,
    this.userId,
    this.condolences,
    this.funeralHeadquarters,
  }) : super (
    token: token,
    id: id,
    name: name,
    gender: gender,
    day: day,
    prayerApponumment: prayerApponumment,
    mosque: mosque,
    burialLocation: burialLocation,
    supervisorId: supervisorId,
    userId: userId,
    condolences: condolences,
    funeralHeadquarters: funeralHeadquarters
  );

  factory ViewMessagesModel.fromJson(Map<String, dynamic> json) => _$ViewMessagesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ViewMessagesModelToJson(this);
}

@JsonSerializable()
class CondolenceModel extends CondolenceEntity {
  final num? id;
  final String? name;
  final String? phone;
  @JsonKey(name: "message_id")
  final num? messageId;

  const CondolenceModel({
    this.id,
    this.name,
    this.phone,
    this.messageId,
  }) : super (
    id: id,
    name: name,
    phone: phone,
    messageId: messageId
  );

  factory CondolenceModel.fromJson(Map<String, dynamic> json) => _$CondolenceModelFromJson(json);

  Map<String, dynamic> toJson() => _$CondolenceModelToJson(this);
}

@JsonSerializable()
class FuneralHqModel extends FuneralHqEntity {
  final num? id;
  final String? place;
  final LocationModel? location;
  @JsonKey(name: "message_id")
  final num? messageId;

  const FuneralHqModel({
    this.id,
    this.place,
    this.location,
    this.messageId,
  }) : super(
    id: id,
    place: place,
    location: location,
    messageId: messageId
  );

  factory FuneralHqModel.fromJson(Map<String, dynamic> json) => _$FuneralHqModelFromJson(json);

  Map<String, dynamic> toJson() => _$FuneralHqModelToJson(this);
}