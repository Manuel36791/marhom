import 'package:equatable/equatable.dart';

class ContactUsEntity extends Equatable {
  final num? id;
  final String? email;

  const ContactUsEntity({
    this.id,
    this.email,
  });

  @override
  List<Object?> get props => [
        id,
        email,
      ];
}
