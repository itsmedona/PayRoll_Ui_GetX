import 'package:flutter/material.dart';
import 'package:payroll_ui_model_gtx/utils/size_utils.dart';
import 'package:payroll_ui_model_gtx/themes/theme_helper.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
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
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 18.fSize);
  static get bodyLargeTealA700 => theme.textTheme.bodyLarge!.copyWith(
        color: AppTheme.tealA700,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.black900.withOpacity(.46),
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900Light => theme.textTheme.bodyMedium!.copyWith(
        color: AppTheme.black900,
        fontWeight: FontWeight.w300,
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
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.onPrimary, 
    fontSize: 15.fSize
      );
  static get bodyMediumOnPrimary15 => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.onPrimary, 
    fontSize: 15.fSize
    );
  static get bodyMediumPoppinsBlack900 => theme.textTheme.bodyMedium!.poppins.copyWith(
    color: AppTheme.black900, 
    fontSize: 15.fSize
    );
  static get bodyMediumPoppinsBluegray300 => theme.textTheme.bodyMedium!.poppins.copyWith(
    color: AppTheme.blueGray300,
     fontSize: 14.fSize
     );
  static get bodyMediumPoppinsPrimary =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
          color: theme.colorScheme.primary.withOpacity(.75),
          fontSize: 14.fSize);
  static get bodyMediumPoppinsSecondaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
          color: theme.colorScheme.secondaryContainer, fontSize: 14.fSize);
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!
      .copyWith(color: theme.colorScheme.primary, fontSize: 14.fSize);
  static get bodyMediumRobotoGray800 => theme.textTheme.bodyMedium!.roboto
      .copyWith(color: AppTheme.gray800, fontSize: 14.fSize);
  static get bodyMediumTealA700 => theme.textTheme.bodyMedium!
      .copyWith(color: AppTheme.tealA700, fontSize: 14.fSize);

  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallGray60099 => theme.textTheme.bodySmall!.copyWith(
        color: AppTheme.gray60099,
        fontSize: 9.fSize,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack90012 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBlack900Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
          color: AppTheme.black900,
          fontSize: 9.fSize,
          fontWeight: FontWeight.w300);
  static get bodySmallInterBuegray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallInterBluegray40012 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.blueGray400,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBluegray400Light =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.blueGray400,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterBluegray800 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.blueGray800,
        fontSize: 8.fSize,
      );
  static get bodySmallInterGray50003 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.gray50003,
        fontSize: 8.fSize,
      );
  static get bodySmallInterGray500039 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.gray50003,
        fontSize: 9.fSize,
      );
  static get bodySmallInterGreen600 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: AppTheme.green600,
        fontSize: 8.fSize,
      );
  static get bodySmallInterOnPrimary =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallLime70001 => theme.textTheme.bodySmall!.copyWith(
        color: AppTheme.lime70001,
        fontSize: 11.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallTealA700 => theme.textTheme.bodySmall!.copyWith(
        color: AppTheme.tealA700,
        fontSize: 11.fSize,
      );

//Display text style
  static get displayMediumBlack => theme.textTheme.displayMedium!
      .copyWith(fontSize: 44.fSize, fontWeight: FontWeight.w900);

//Headline text style
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: AppTheme.black900,
      );
  static get headlineSmallLightgreenA700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: AppTheme.lightgreenA700,
        fontWeight: FontWeight.w700,
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
  static get labelLargeGray50002 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.gray50002,
      );

  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.gray600.withOpacity(0.75),
        fontSize: 13.fSize,
      );
  static get labelLargeGray60013 => theme.textTheme.labelLarge!.copyWith(
        color: AppTheme.gray600,
        fontSize: 13.fSize,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
      color: theme.colorScheme.primary,
      fontSize: 13.fSize,
      fontWeight: FontWeight.w600);
  static get labelLargePoppinsBluegray70001 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: AppTheme.blueGray70001,
      );

  static get labelMediumBluegray40001 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.blueGray40001,
      );
  static get labelMediumBluegray5009e => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.blueGray5009e,
      );
  static get labelMediumDeepOrangeA400 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.deepOrangeA400,
      );
  static get labelMediumGray600 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray600.withOpacity(0.83),
      );
  static get labelMediumGray600_1 =>
      theme.textTheme.labelMedium!.copyWith(color: AppTheme.gray600);
  static get labelMediumGray700 =>
      theme.textTheme.labelMedium!.copyWith(color: AppTheme.gray700);
  static get labelMediumGray70001 => theme.textTheme.labelMedium!
      .copyWith(color: AppTheme.gray70001, fontSize: 11.fSize);
  static get labelMediumGray70001_1 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.gray70001,
      );
  static get labelMediumGray90001 => theme.textTheme.labelMedium!
      .copyWith(color: AppTheme.gray90001, fontSize: 11.fSize);
  static get labelMediumGreen600 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.green600,
      );
  static get labelMediumGreen60001 => theme.textTheme.labelMedium!.copyWith(
      color: AppTheme.green60001,
      fontSize: 11.fSize,
      fontWeight: FontWeight.w700);
  static get labelMediumGreen60001_1 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.green60001,
      );
  static get labelMediumGreen700 => theme.textTheme.labelMedium!
      .copyWith(color: AppTheme.green700, fontWeight: FontWeight.w600);
  static get labelMediumLime700 => theme.textTheme.labelMedium!.copyWith(
        color: AppTheme.lime700,
      );
  static get labelMediumYellow800 => theme.textTheme.labelMedium!
      .copyWith(color: AppTheme.yellow800, fontWeight: FontWeight.w600);

  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: AppTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBlack900Bold => theme.textTheme.labelSmall!.copyWith(
        color: AppTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBluegray400 => theme.textTheme.labelSmall!.copyWith(
        color: AppTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallBluegray800 => theme.textTheme.labelSmall!.copyWith(
        color: AppTheme.blueGray800.withOpacity(0.62),
        fontWeight: FontWeight.w500,
      );

  //title text style
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
      color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w400);
  static get titleLargeOnPrimarySemiBold =>
      theme.textTheme.titleLarge!.copyWith(
          color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w600);
  static get titleMedium17 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 17.fSize);
  static get titleMedium18 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 18.fSize);
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
      color: AppTheme.blueGray800,
      fontSize: 17.fSize,
      fontWeight: FontWeight.w700);
  static get titleMediumBold => theme.textTheme.titleMedium!
      .copyWith(fontSize: 18.fSize, fontWeight: FontWeight.w700);
  static get titleMediumGray600 => theme.textTheme.titleMedium!
      .copyWith(color: AppTheme.gray600, fontSize: 17.fSize);
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
      color: AppTheme.gray900, fontSize: 17.fSize, fontWeight: FontWeight.w700);
  static get titleMediumGray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
          color: AppTheme.gray900,
          fontSize: 17.fSize,
          fontWeight: FontWeight.w600);
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
      color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w700);
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!
      .copyWith(color: theme.colorScheme.primary, fontSize: 17.fSize);
  static get titleMediumTealA700 => theme.textTheme.titleMedium!
      .copyWith(color: AppTheme.tealA700, fontSize: 17.fSize);
  static get titleMediumTealA700SemiBold => theme.textTheme.titleMedium!
      .copyWith(color: AppTheme.tealA700, fontWeight: FontWeight.w600);
  static get titleSmall15 =>
      theme.textTheme.titleSmall!.copyWith(fontSize: 15.fSize);
  static get titleSmallBlack900 => theme.textTheme.titleSmall!
      .copyWith(color: AppTheme.black900, fontWeight: FontWeight.w600);
  static get titleSmallBlack900Bold => theme.textTheme.titleSmall!.copyWith(
      color: AppTheme.black900.withOpacity(.6), fontWeight: FontWeight.w700);
  static get titleSmallBlack900SemiBold => theme.textTheme.titleSmall!.copyWith(
      color: AppTheme.black900.withOpacity(.9),
      fontSize: 15.fSize,
      fontWeight: FontWeight.w600);
  static get titleSmallBluegray20001 => theme.textTheme.titleSmall!
      .copyWith(color: AppTheme.blueGray20001, fontSize: 15.fSize);
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!
      .copyWith(color: AppTheme.blueGray500, fontSize: 15.fSize);
  static get titleSmallBold => theme.textTheme.titleSmall!
      .copyWith(fontSize: 15.fSize, fontWeight: FontWeight.w700);
  static get titleSmallBold_1 =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700);
  static get titleSmallGray600 => theme.textTheme.titleSmall!
      .copyWith(color: AppTheme.gray600, fontWeight: FontWeight.w600);
  static get titleSmallGray60015 => theme.textTheme.titleSmall!
      .copyWith(fontSize: 15.fSize, color: AppTheme.gray600);
  static get titleSmallGray600SemiBold => theme.textTheme.titleSmall!.copyWith(
      fontSize: 15.fSize, color: AppTheme.gray600, fontWeight: FontWeight.w600);
  static get titleSmallGray90001 => theme.textTheme.titleSmall!
      .copyWith(fontSize: 15.fSize, color: AppTheme.gray90001);
  static get titleSmallGreen6 =>
      theme.textTheme.titleSmall!.copyWith(color: AppTheme.green600);
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 15.fSize);
  static get titleSmallOnPrimary15 => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 15.fSize);
  static get titleSmallOnPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnPrimary_2 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.primary, fontSize: 15.fSize);
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: AppTheme.redA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRedA70001 => theme.textTheme.titleSmall!.copyWith(
        color: AppTheme.redA70001,
        fontSize: 15.fSize,
      );
  static get titleSmallTealA700 => theme.textTheme.titleSmall!.copyWith(
        color: AppTheme.tealA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}
