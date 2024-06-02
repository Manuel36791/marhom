import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marhom/core/utils/dimensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../manager/user_edit_profile_cubit.dart';
import 'image_picker_button.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  const ImagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserEditProfileCubit,
        UserEditProfileStates>(
      listener: (context, state) {},
      builder: (context, state) {
        UserEditProfileCubit userEditProfileCubit = context.read<UserEditProfileCubit>();
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.p16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImagePickerBtn(
                  icon: MdiIcons.imageMultiple,
                  label: "From Gallery",
                  onTap: () => userEditProfileCubit.pickAvatarImage(ImageSource.gallery),
                ),
                Gap(10.h),
                ImagePickerBtn(
                  icon: MdiIcons.camera,
                  label: "From Camera",
                  onTap: () => userEditProfileCubit.pickAvatarImage(ImageSource.camera),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
