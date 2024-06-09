import 'package:equatable/equatable.dart';

class HelpersEntity extends Equatable {
  final String? token;


  const HelpersEntity({
    this.token,
  });

  @override
  List<Object?> get props => [
        token,
      ];
}
