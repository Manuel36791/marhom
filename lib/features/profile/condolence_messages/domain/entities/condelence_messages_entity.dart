import 'package:equatable/equatable.dart';

class CondolenceMessagesResponseEntity extends Equatable {
  final List<CondolenceMessagesEntity>? data;

  const CondolenceMessagesResponseEntity({
    this.data,
  });

  @override
  List<Object?> get props => [
        data,
      ];
}

class CondolenceMessagesEntity extends Equatable {
  final int? id;
  final String? messageAr;
  final String? messageEn;

  const CondolenceMessagesEntity({
    this.id,
    this.messageAr,
    this.messageEn,
  });

  @override
  List<Object?> get props => [
        id,
        messageAr,
        messageEn,
      ];
}
