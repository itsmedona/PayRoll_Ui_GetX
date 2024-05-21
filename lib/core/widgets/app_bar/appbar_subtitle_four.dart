import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/themes/app_decoration.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import '../../../themes/theme_helper.dart';
import '../custom_text_styles.dart';

// ignore: must_be_immutable
class AppbarSubtitleFour extends StatelessWidget {
  AppbarSubtitleFour({Key? key, required this.text, this.margin, this.onTap})
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
        child:Container(
          width: 29.h,
          decoration: AppDecoration.fillIndigo.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
        child:Text(
          text,
          style: CustomTextStyles.bodySmallInterOnPrimary.copyWith(
            color:theme.colorScheme.onPrimary,
          ),
        ), 
        ),
      ),
    );
  }
}
