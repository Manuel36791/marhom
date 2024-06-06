import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:marhom/features/profile/contacts/presentation/widgets/contact_list_tile.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class GroupView extends StatelessWidget {
  final List<Contact> groupContacts;
  const GroupView({super.key, required this.groupContacts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.p16),
          child: ListView.builder(
            itemCount: groupContacts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  index == 0 ? 0 : 8,
                  0,
                  index == groupContacts.length - 1 ? 0 : 8,
                ),
                child: ContactListTile(
                  contact: groupContacts[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
