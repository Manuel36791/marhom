part of 'view_messages_cubit.dart';

@freezed
class ViewMessagesStates with _$ViewMessagesStates {
  const factory ViewMessagesStates.initial() = _Initial;
  const factory ViewMessagesStates.loading() = Loading;
  const factory ViewMessagesStates.success(final List<ViewMessagesEntity> messages) = Success;
  const factory ViewMessagesStates.error(final Failure failure) = error;
}
