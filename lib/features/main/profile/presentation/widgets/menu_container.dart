import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class ClickableMenuTile extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  const ClickableMenuTile({super.key, required this.onClick, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.p16),
        decoration: BoxDecoration(
          color: AppColors.primaryGold,
          borderRadius: BorderRadius.circular(
            Dimensions.r12,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: CustomTextStyle.kTextStyleF14.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.p8),
              child: Icon(
                MdiIcons.chevronRight,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
