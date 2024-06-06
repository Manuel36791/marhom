import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

part 'contact_groups_states.dart';

part 'contact_groups_cubit.freezed.dart';

class ContactGroupsCubit extends Cubit<ContactGroupsStates> {
  ContactGroupsCubit() : super(const ContactGroupsStates.initial());

  static ContactGroupsCubit get(context) => BlocProvider.of(context);

  List<Contact>? contacts;

  getPhoneContacts() async {
    if (await FlutterContacts.requestPermission()) {
      emit(const ContactGroupsStates.loading());

      // Get all contacts (fully fetched)
      contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withPhoto: true,
      );

      emit(ContactGroupsStates.success(contacts!));

      // // Insert new contact
      // final newContact = Contact()
      //   ..name.first = 'John'
      //   ..name.last = 'Smith'
      //   ..phones = [Phone('555-123-4567')];
      // await newContact.insert();
      //
      // // Update contact
      // contact.name.first = 'Bob';
      // await contact.update();
      //
      // // Delete contact
      // await contact.delete();
      //
      // // Open external contact app to view/edit/pick/insert contacts.
      // await FlutterContacts.openExternalView(contact.id);
      // await FlutterContacts.openExternalEdit(contact.id);
      // final contact = await FlutterContacts.openExternalPick();
      // final contact = await FlutterContacts.openExternalInsert();
      //
      // // Listen to contact database changes
      // FlutterContacts.addListener(() => print('Contact DB changed'));
      //
      // // Create a new group (iOS) / label (Android).
      // await FlutterContacts.insertGroup(Group('', 'Coworkers'));
      //
      // // Export contact to vCard
      // String vCard = contact.toVCard();
      //
      // // Import contact from vCard
      // contact = Contact.fromVCard('BEGIN:VCARD\n'
      //     'VERSION:3.0\n'
      //     'N:;Joe;;;\n'
      //     'TEL;TYPE=HOME:123456\n'
      //     'END:VCARD');
    }
  }

  List<List<Contact>> divideListIntoQuarters(List<Contact> list) {
    int length = list.length;
    int baseSize = length ~/ 4;
    int remainder = length % 4;

    List<List<Contact>> quarters = [];
    int start = 0;

    for (int i = 0; i < 4; i++) {
      int end = start + baseSize + (remainder > 0 ? 1 : 0);
      quarters.add(list.sublist(start, end));
      start = end;
      if (remainder > 0) remainder--;
    }

    return quarters;
  }

}
