import 'package:flutter/material.dart';

import '../../../themes/theme_helper.dart';
import '../custom_text_styles.dart';

// ignore: must_be_immutable
class AppbarSubtitleThree extends StatelessWidget {
  AppbarSubtitleThree({Key? key, required this.text, this.margin, this.onTap})
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
        child: Text(
          text,
          style: CustomTextStyles.labelLargeBluegray50013.copyWith(
            color:AppTheme.blueGray500,
          ),
        ), 
        ),
    );
  }
}
