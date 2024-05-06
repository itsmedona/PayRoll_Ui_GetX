import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/themes/apptheme.dart';

class CustmDropDown extends StatelessWidget {
  const CustmDropDown({
    Key? key,
    this.alignment,
    required this.width,
    this.focusNode,
    this.icon,
    required this.autofocus,
    this.textStyle,
    this.items,
    this.hintText,
    this.hindStyle,
    this.prefix,
    this.prefixConstraints,
    required this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final double width;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool autofocus;
  final TextStyle? textStyle;
  final List<String>? items;
  final String? hintText;
  final TextStyle? hindStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => SizedBox(
        width: width ?? double.maxFinite,/////
        child: DropdownButtonFormField(/////
          focusNode: focusNode,
          icon: icon,
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.bodyLargeBluegray500,
          items: items?.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    overflow: TextOverflow.ellipsis,
                    style: hindStyle ?? CustomTextStyles.bodyLargeBluegray500,
                  ),
                );
              })?.toList() ??/////
              [],
          decoration: decoration,
          validator: validator,//////
          onChanged: onChanged != null
              ? (value) {
                  onChanged!(value.toString());
                }
              : null,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hindStyle ?? CustomTextStyles.bodyLargeBluegray500,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding:
            contentPadding ?? EdgeInsets.fromLTRB(8.h, 10.v, 8.h, 8.v),
        fillColor: fillColor ?? theme.colorScheme.onPrimary,
        filled: filled ?? false,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(19.h),
              borderSide: BorderSide(
                color: AppTheme.blueGray500,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(19.h),
              borderSide: BorderSide(color: AppTheme.tealA700, width: 1),
            ),
      );
}
