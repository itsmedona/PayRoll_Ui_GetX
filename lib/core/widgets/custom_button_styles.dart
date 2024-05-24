import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

class CustomButtonStyles {
  //elevated button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: AppTheme.blueGray500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL5 => ElevatedButton.styleFrom(
        backgroundColor: AppTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );   
  static ButtonStyle get fillBlueGrayTL51 => ElevatedButton.styleFrom(
        backgroundColor: AppTheme.blueGray10002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      ); 
  static ButtonStyle get Gray => ElevatedButton.styleFrom(
        backgroundColor: AppTheme.gray30001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );    
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor:theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );      
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor:theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );        
  static ButtonStyle get fillTealA => ElevatedButton.styleFrom(
        backgroundColor: AppTheme.tealA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );

//outline button style
  static ButtonStyle get outlineBlueGrayTL10 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        side: BorderSide(
          color: AppTheme.blueGray10002,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
      static ButtonStyle get outlineBlueGrayTL15 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        side: BorderSide(
          color: AppTheme.blueGray700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
      static ButtonStyle get outlineLightGreen => OutlinedButton.styleFrom(
        backgroundColor:AppTheme.lightgreen400.withOpacity(0.24),
        side: BorderSide(
          color: AppTheme.lightgreen400.withOpacity(0.72),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
      static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary.withOpacity(0.5),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
       static ButtonStyle get outlinePrimaryTL6 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
      static ButtonStyle get outlinePrimaryTL7 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: theme.colorScheme.primary.withOpacity(0.3),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.h),
        ),
      );
  static ButtonStyle get outlineTealA => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        side: BorderSide(
          color: AppTheme.tealA700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  //text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

