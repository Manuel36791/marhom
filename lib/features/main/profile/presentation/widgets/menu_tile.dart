import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/dimensions.dart';

class MenuTile extends StatefulWidget {
  final String title;
  final List<Widget> children;

  const MenuTile({super.key, required this.title, required this.children});

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: AppColors.primaryGold,
      collapsedBackgroundColor: AppColors.primaryGold,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimensions.r12,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimensions.r12,
          ),
        ),
      ),
      trailing: _isExpanded
          ? Icon(
              Intl.getCurrentLocale() == "en"
                  ? MdiIcons.chevronRight
                  : MdiIcons.chevronLeft,
              color: Colors.transparent,
            )
          : Icon(
              Intl.getCurrentLocale() == "en"
                  ? MdiIcons.chevronRight
                  : MdiIcons.chevronLeft,
            ),
      title: _isExpanded
          ? Text(
              widget.title,
              textAlign: TextAlign.center,
              style: CustomTextStyle.kTextStyleF16,
            )
          : Text(
              widget.title,
              style: CustomTextStyle.kTextStyleF14.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
      onExpansionChanged: (bool expanded) {
        setState(() {
          _isExpanded = expanded;
        });
      },
      childrenPadding: const EdgeInsets.all(Dimensions.p16),
      children: widget.children,
    );
  }
}
