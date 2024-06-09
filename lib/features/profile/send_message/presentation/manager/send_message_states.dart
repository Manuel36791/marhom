part of 'send_message_cubit.dart';

@freezed
class SendMessageStates with _$SendMessageStates {
  const factory SendMessageStates.initial() = _Initial;
  const factory SendMessageStates.indexIncreased(final int index) = IndexIncreased;
  const factory SendMessageStates.indexMaintained(final int index) = IndexMaintained;
  const factory SendMessageStates.loading() = Loading;
  const factory SendMessageStates.success(final SendMessageEntity message) = Success;
  const factory SendMessageStates.error(final Failure failure) = Error;

}
