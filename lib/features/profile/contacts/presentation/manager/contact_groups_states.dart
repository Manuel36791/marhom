part of 'contact_groups_cubit.dart';

@freezed
class ContactGroupsStates with _$ContactGroupsStates {
  const factory ContactGroupsStates.initial() = _Initial;
  const factory ContactGroupsStates.loading() = Loading;
  const factory ContactGroupsStates.success(final List<Contact> contacts) = Success;
}
