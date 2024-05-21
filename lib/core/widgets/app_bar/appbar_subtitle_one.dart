import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/core/widgets/custom_text_styles.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

// ignore: must_be_immutable
class AppbarSubtitleOne extends StatelessWidget {
   AppbarSubtitleOne(
      {Key? key, required this.text, this.margin, this.onTap})
      : super(key: key);
  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding:margin??EdgeInsets.zero,
        child: Text(text,
        style: CustomTextStyles.titleSmallBluegray500.copyWith(
          color:AppTheme.blueGray500,
        ),
        ),
         ),
    );
  }
}
