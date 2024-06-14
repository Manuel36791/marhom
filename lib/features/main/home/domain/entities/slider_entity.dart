import 'package:equatable/equatable.dart';

class SlidersResponseEntity extends Equatable {
  final List<SlidersEntity>? data;

  const SlidersResponseEntity({
    this.data,
  });

  @override
  List<Object?> get props => [
        data,
      ];
}

class SlidersEntity extends Equatable {
  final String? slider;

  const SlidersEntity({
    this.slider,
  });

  @override
  List<Object?> get props => [
        slider,
      ];
}
