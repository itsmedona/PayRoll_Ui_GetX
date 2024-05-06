import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';
import 'package:payroll_ui_model_gtx/themes/apptheme.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

///Collection of pre-defined text styles
///categorized by different font families and weights.
class CustomTextStyles {
//Body text style
  static get bodyLargeBluegray500 => theme.textTheme.bodyLarge!.copyWith(
        color: AppTheme.blueGray500,
      );
  static get bodyLargeTealA700 => theme.textTheme.bodyLarge!.copyWith(
        color: AppTheme.tealA700,
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.blueGray500,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray500_1 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.blueGray500,
      );
  static get bodyMediumBluegray500_2 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.blueGray500,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.gray50001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.gray600,
      );

//Display text style
  static get displayMediumBlack => theme.textTheme.displayMedium!
      .copyWith(fontSize: 44.fSize, fontWeight: FontWeight.w900);

//Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: AppTheme.black900,
      );

//Inter text style
  static get interGreen600 => TextStyle(
        color: AppTheme.green600,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).inter;

//Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.black900.withOpacity(0.72),
      );
  static get labelLargeBlack900SemiBold => theme.textTheme.labelLarge!.copyWith(
      color: AppTheme.black900.withOpacity(0.25),
      fontSize: 13.fSize,
      fontWeight: FontWeight.w600);

  static get labelLargeBluegray20001 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.blueGray20001,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray500 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.blueGray500,
        fontSize: 13.fSize,
      );
      static get labelLargeBluegray50013 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.blueGray500,
        fontSize: 13.fSize,
      );
  static get labelLargeBluegray500Bold => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.blueGray500,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.gray600.withOpacity(0.75),
        fontSize: 13.fSize,
      );
  static get labelLargeGray60013 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.gray600,
        fontSize: 13.fSize,
      ); 

      static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray600.withOpacity(0.83),
      );
      static get labelMediumGray600_1 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray600
        );
      static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray700
      );
      static get labelMediumGray70001 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray70001,
        fontSize: 11.fSize
      );
      static get labelMediumGray70001_1 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray70001,
      );
      static get labelMediumGray90001 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray90001,
        fontSize: 11.fSize
       
      );

      //title text style
      static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400
      );
      static get titleLargeOnPrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600
      );
      static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize
      );
      static get titleMedium18=> theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize
      );
      static get titleMediumBold=> theme.textTheme.titleMedium!.copyWith(
      fontSize: 18.fSize,
      fontWeight: FontWeight.w700
      );
      static get titleMediumGray600=> theme.textTheme.titleMedium!.copyWith(
      color: AppTheme.gray600,
      fontSize: 17.fSize
      );
      static get titleMediumGray900=> theme.textTheme.titleMedium!.copyWith(
      color: AppTheme.gray900,
      fontSize: 17.fSize,
      fontWeight: FontWeight.w700
      );
      static get titleMediumGray900SemiBold=> theme.textTheme.titleMedium!.copyWith(
      color: AppTheme.gray900,
      fontSize: 17.fSize,
      fontWeight: FontWeight.w600
      );
      static get titleMediumTealA700 => theme.textTheme.titleMedium!.copyWith(
        color: AppTheme.tealA700,
        fontSize: 17.fSize
      );
      static get titleMediumTealA700SemiBold => theme.textTheme.titleMedium!.copyWith(
        color: AppTheme.tealA700,
        fontWeight: FontWeight.w600
      );



}
