import 'package:equatable/equatable.dart';

class PhonesEntity extends Equatable {
  final String? phones;

  const PhonesEntity({this.phones,});

  @override
  List<Object?> get props => [phones,];
}
