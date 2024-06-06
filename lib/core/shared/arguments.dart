import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:marhom/features/main/supervisor_home/domain/entities/view_messages_entity.dart';

class SupervisorRegisterArguments {
  final num accountType;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String dialCode;
  final String countryCode;

  SupervisorRegisterArguments({required this.accountType, required this.firstName, required this.lastName, required this.phoneNumber, required this.dialCode, required this.countryCode});
}

class MapArgs {
  final num location;

  MapArgs({required this.location});
}

class GroupArgs {
  final List<Contact> contacts;

  GroupArgs({required this.contacts});


}

class MortalityDetailsArgs {
  final ViewMessagesEntity message;

  MortalityDetailsArgs({required this.message});
}