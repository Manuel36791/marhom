part of 'qa_cubit.dart';

@freezed
class QaStates with _$QaStates {
  const factory QaStates.initial() = _Initial;
  const factory QaStates.loading() = Loading;
  const factory QaStates.error(final Failure failure) = FaqsError;
  const factory QaStates.faqsSuccess(final QADataEntity faqs) = FaqsSuccess;
  const factory QaStates.fatwasSuccess(final QADataEntity fatwas) = FatwasSuccess;
}
