import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

class AppDecoration {
  static BoxDecoration get fillAmber => BoxDecoration(
        color: AppTheme.amber300.withOpacity(0.12),
      );
  static BoxDecoration get fillAmber300 => BoxDecoration(
        color: AppTheme.amber300.withOpacity(0.1),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: AppTheme.blue30023,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: AppTheme.blueGray10002,
      );
  static BoxDecoration get fillBlueGray40002 => BoxDecoration(
        color: AppTheme.blueGray40002,
      );
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: AppTheme.deepOrangeA400,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: AppTheme.deepPurple90019,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: AppTheme.gray100,
      );
  static BoxDecoration get fillGrayF => BoxDecoration(
        color: AppTheme.gray40007f,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: AppTheme.green60001,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: AppTheme.indigo30001,
      );
  static BoxDecoration get fillIndigo300 => BoxDecoration(
        color: AppTheme.indigo300,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: AppTheme.lightgreen400,
      );
  static BoxDecoration get fillLightGreen400 => BoxDecoration(
        color: AppTheme.lightgreen400.withOpacity(0.14),
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: AppTheme.lime300,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: AppTheme.purple300,
      );
  static BoxDecoration get fillPurple300 => BoxDecoration(
        color: AppTheme.purple300.withOpacity(0.1),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: AppTheme.red300,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: AppTheme.teal800,
      );
  static BoxDecoration get fillTeal500 => BoxDecoration(
        color: AppTheme.teal500.withOpacity(0.06),
      );
//Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: AppTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              11,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: AppTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              7,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: AppTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: AppTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: AppTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: AppTheme.gray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: AppTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        color: AppTheme.lightgreen100,
        border: Border.all(
          color: AppTheme.lightgreenA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        color: AppTheme.lightgreen400.withOpacity(0.24),
        border: Border.all(
          color: AppTheme.lightgreen400.withOpacity(0.72),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: AppTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          )
        ],
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimary,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        color: AppTheme.red100,
        border: Border.all(
          color: AppTheme.redA100,
          width: 1.h,
        ),
      );
//White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
}

class BorderRadiusStyle {
  //Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder75 => BorderRadius.circular(
        75.h,
      );
  //Custom borders
  static BorderRadius get customBorderLR15 => BorderRadius.horizontal(
        right: Radius.circular(15.h),
      );
  //Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}
