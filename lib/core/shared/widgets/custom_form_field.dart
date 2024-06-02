import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/dimensions.dart';

class CustomFormField extends StatefulWidget {
  final Stream stream;
  final Function(String) onChanged;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextInputAction? nextAction;
  final int? maxLength;
  final int? maxLines;
  final Widget? preIcon;
  final Widget? postIcon;
  final String? label;
  final String? hint;
  final String? helperText;
  final Color color;
  final bool floatingLabel;
  final String? initValue;
  final bool? readOnly;

  const CustomFormField({
    super.key,
    required this.stream,
    required this.onChanged,
    this.isPassword = false,
    this.keyboardType,
    this.nextAction,
    this.maxLength,
    this.maxLines = 1,
    this.preIcon,
    this.postIcon,
    this.label,
    this.hint,
    this.helperText,
    this.color = const Color(0xFF000000),
    this.floatingLabel = false,
    this.initValue,
    this.readOnly,
  });

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.stream,
      builder: (ctx, snapShot) {
        return TextFormField(
          readOnly: widget.readOnly ?? false,
          initialValue: widget.initValue,
          onChanged: widget.onChanged,
          obscureText: widget.isPassword,
          obscuringCharacter: "*",
          keyboardType: widget.keyboardType,
          textInputAction: widget.nextAction,
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          style: CustomTextStyle.kFormFieldTextStyle,
          decoration: InputDecoration(
            prefixIcon: widget.preIcon,
            suffix: widget.postIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                Dimensions.r20,
              ),
              borderSide: BorderSide(
                color: widget.color,
                width: 1.0,
              ),
            ),
            isDense: true,
            counter: const Offstage(),
            labelText: widget.label!,
            labelStyle: CustomTextStyle.kFormFieldTextStyle.copyWith(
              color: AppColors.blackText,
            ),
            floatingLabelBehavior: widget.floatingLabel
                ? FloatingLabelBehavior.always
                : FloatingLabelBehavior.auto,
            helperText: widget.helperText,
            hintText: widget.hint,
            hintStyle: CustomTextStyle.kFormFieldTextStyle,
            errorText: snapShot.hasError ? snapShot.error.toString() : null,
            errorStyle: CustomTextStyle.kTextStyleF12.copyWith(
              color: AppColors.errorRed,
            ),
          ),
        );
      },
    );
  }
}
