import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/Location_entity.dart';

class ViewMessagesEntity extends Equatable {
  final String? token;
  final num? id;
  final String? name;
  final String? gender;
  final String? day;
  final DateTime? prayerApponumment;
  final String? mosque;
  final String? burialLocation;
  final num? supervisorId;
  final num? userId;
  final List<CondolenceEntity>? condolences;
  final List<FuneralHqEntity>? funeralHeadquarters;

  const ViewMessagesEntity({
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
  });

  @override
  List<Object?> get props => [
        token,
        id,
        name,
        gender,
        day,
        prayerApponumment,
        mosque,
        burialLocation,
        supervisorId,
        userId,
        condolences,
        funeralHeadquarters,
      ];
}

class CondolenceEntity extends Equatable {
  final num? id;
  final String? name;
  final String? phone;
  final num? messageId;

  const CondolenceEntity({
    this.id,
    this.name,
    this.phone,
    this.messageId,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        phone,
        messageId,
      ];
}

class FuneralHqEntity extends Equatable {
  final num? id;
  final String? place;
  final LocationEntity? location;
  final num? messageId;

  const FuneralHqEntity({
    this.id,
    this.place,
    this.location,
    this.messageId,
  });

  @override
  List<Object?> get props => [id, place, location, messageId];
}
