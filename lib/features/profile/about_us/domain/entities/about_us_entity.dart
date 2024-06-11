import 'package:equatable/equatable.dart';

class AboutUsEntity extends Equatable {
  final num? id;
  final String? aboutAr;
  final String? aboutEn;

  const AboutUsEntity({
    this.id,
    this.aboutAr,
    this.aboutEn,
  });

  @override
  List<Object?> get props => [
        id,
        aboutAr,
        aboutEn,
      ];
}
