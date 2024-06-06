import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class ContactListTile extends StatelessWidget {
  final Contact contact;
  const ContactListTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.primaryGold,
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(Dimensions.r12),
      ),
      leading: ClipRRect(
        borderRadius:
        BorderRadius.circular(Dimensions.r12),
        child: Image.memory(
          contact.photo!,
          // height: 40.h,
          // width: 40.w,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        contact.displayName,
        style: CustomTextStyle.kTextStyleF16.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        contact.emails[0].address,
        style: CustomTextStyle.kTextStyleF14,
      ),
    );
  }
}
