import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marhom/core/router/router.dart';
import 'package:marhom/core/shared/arguments.dart';
import 'package:marhom/core/utils/app_text_styles.dart';
import 'package:marhom/core/utils/extensions.dart';
import 'package:marhom/features/profile/contacts/presentation/widgets/group_grid_item.dart';

import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';
import '../manager/contact_groups_cubit.dart';

class ContactGroupsView extends StatelessWidget {
  const ContactGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactGroupsCubit()..getPhoneContacts(),
      child: BlocConsumer<ContactGroupsCubit, ContactGroupsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ContactGroupsCubit contactGroupsCubit =
              ContactGroupsCubit.get(context);
          return Scaffold(
            appBar: const CustomAppBar(),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        var quarterContacts = contactGroupsCubit.divideListIntoQuarters(contactGroupsCubit.contacts!);
                        context.pushNamed(
                          groupView,
                          arguments: GroupArgs(
                            contacts: quarterContacts[index],
                          ),
                        );
                      },
                      child: GroupGridItem(index: index),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
