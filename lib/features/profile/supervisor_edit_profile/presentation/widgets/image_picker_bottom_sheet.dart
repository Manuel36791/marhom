import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marhom/core/utils/dimensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../manager/supervisor_edit_profile_cubit.dart';
import 'image_picker_button.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  const ImagePickerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SupervisorEditProfileCubit,
        SupervisorEditProfileStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.p16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ImagePickerBtn(
                  icon: MdiIcons.imageMultiple,
                  label: "From Gallery",
                  onTap: () {},
                ),
                Gap(10.h),
                ImagePickerBtn(
                  icon: MdiIcons.camera,
                  label: "From Camera",
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
