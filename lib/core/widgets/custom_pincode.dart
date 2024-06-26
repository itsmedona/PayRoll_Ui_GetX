import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    this.alignment,
    required this.context,
    this.controller,
    this.textStyle,
    //this.hintText,
    this.validator, required Null Function(dynamic value) onChanged,
  }) : super(key: key);

  final Alignment? alignment;
  final BuildContext context;
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget)
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.bodyMediumBluegray500,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        enableActiveFill: true,
        pinTheme: PinTheme(
          fieldHeight: 48.h,
          fieldWidth: 49.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(6.h),
          selectedColor: AppTheme.tealA700,
          selectedFillColor: theme.colorScheme.onPrimary,
          inactiveColor: AppTheme.blueGray500,
          activeColor: AppTheme.blueGray500,
          inactiveFillColor: theme.colorScheme.onPrimary,
          activeFillColor: theme.colorScheme.onPrimary,
        ),
        validator: validator,
       
      );
}
