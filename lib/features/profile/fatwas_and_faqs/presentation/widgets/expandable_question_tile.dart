import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';

class ExpandableQuestionTile extends StatefulWidget {
  final String question;
  final String answer;

  const ExpandableQuestionTile(
      {super.key, required this.question, required this.answer});

  @override
  State<ExpandableQuestionTile> createState() => _ExpandableQuestionTileState();
}

class _ExpandableQuestionTileState extends State<ExpandableQuestionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: AppColors.tertiaryGrey,
      collapsedBackgroundColor: AppColors.tertiaryGrey,
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
              widget.question,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              // style: CustomTextStyle.kTextStyleF12,
            )
          : Text(
              widget.question,
        overflow: TextOverflow.ellipsis,
        // style: CustomTextStyle.kTextStyleF12.copyWith(
        //         fontWeight: FontWeight.w300,
        //       ),
            ),
      onExpansionChanged: (bool expanded) {
        setState(() {
          _isExpanded = expanded;
        });
      },
      childrenPadding: const EdgeInsets.all(Dimensions.p16),
      children: [
        Text(
          widget.answer,
          // style: CustomTextStyle.kTextStyleF16.copyWith(
          //   fontWeight: FontWeight.w300,
          // ),
        ),
      ],
    );
  }
}
