import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/data/models/qa_model.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/domain/use_cases/faqs_use_case.dart';
import 'package:marhom/features/profile/fatwas_and_faqs/domain/use_cases/fatwas_use_case.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/qa_entity.dart';

part 'qa_states.dart';

part 'qa_cubit.freezed.dart';

class QaCubit extends Cubit<QaStates> {
  QaCubit({required this.fatwasUseCase, required this.faqsUseCase})
      : super(const QaStates.initial());

  static QaCubit get(context) => BlocProvider.of<QaCubit>(context);

  final FatwasUseCase fatwasUseCase;

  getFatwas() async {
    emit(const QaStates.loading());

    final response = await fatwasUseCase();
    response.fold(
      (l) {
        emit(QaStates.error((l)));
      },
      (r) {
        emit(QaStates.fatwasSuccess(r));
      },
    );
  }

  final FAQsUseCase faqsUseCase;

  getFaqs(QAModel qAModel) async {
    emit(const QaStates.loading());

    final response = await faqsUseCase(qAModel);
    response.fold(
      (l) {
        emit(QaStates.error((l)));
      },
      (r) {
        emit(QaStates.fatwasSuccess(r));
      },
    );
  }
}
