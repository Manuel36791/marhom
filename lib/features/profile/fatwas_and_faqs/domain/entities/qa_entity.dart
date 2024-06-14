
import 'package:equatable/equatable.dart';

class QAEntity extends Equatable {
  final String? token;
  final num? id;
  final String? questionAr;
  final String? questionEn;
  final String? answerAr;
  final String? answerEn;
  final num? type;

  const QAEntity({
    this.token,
    this.id,
    this.questionAr,
    this.questionEn,
    this.answerAr,
    this.answerEn,
    this.type,
  });

  @override
  List<Object?> get props => [
        token,
        id,
        questionAr,
        questionEn,
        answerAr,
        answerEn,
        type,
      ];
}

class QADataEntity extends Equatable {
  final List<QAEntity>? qaData;

  const QADataEntity({
    this.qaData,
  });

  @override
  List<Object?> get props => [
        qaData,
      ];
}
