import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/Location_entity.dart';

class SendMessageEntity extends Equatable {
  final String? token;
  final String? name;
  final String? gender;
  final String? day;
  final String? prayer;
  final dynamic mosqueLocation;
  final dynamic burialLocation;
  final dynamic funeralHqs;
  final dynamic condolences;
  final num? supervisorId;
  final num? status;
  final String? message;

  const SendMessageEntity({
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
  });

  @override
  List<Object?> get props => [
        token,
        name,
        gender,
        day,
        prayer,
        mosqueLocation,
        burialLocation,
        funeralHqs,
        condolences,
        supervisorId,
        status,
        message,
      ];
}

class FuneralHqEntity extends Equatable {
  final String? name;
  final LocationEntity? funeralLocation;

  const FuneralHqEntity({
    this.name,
    this.funeralLocation,
  });

  @override
  List<Object?> get props => [
        name,
        funeralLocation,
      ];
}

class CondolencesEntity extends Equatable {
  final String? name;
  final String? phone;

  const CondolencesEntity({
    this.name,
    this.phone,
  });

  @override
  List<Object?> get props => [
        name,
        phone,
      ];
}
