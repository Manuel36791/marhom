part of 'condolence_messages_cubit.dart';

@freezed
class CondolenceMessagesStates with _$CondolenceMessagesStates {
  const factory CondolenceMessagesStates.initial() = _Initial;
  const factory CondolenceMessagesStates.loading() = Loading;
  const factory CondolenceMessagesStates.success(final CondolenceMessagesResponseEntity messages) = Success;
  const factory CondolenceMessagesStates.error(final Failure failure) = Error;
}
