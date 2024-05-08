import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payroll_ui_model_gtx/core/constants/size.dart';

LightCodeColors get AppTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();

class PrefUtils {
  static void setThemeData(String theme) {}

static String getThemeData(){
  return 'lightCode';
}
}
//Helper Class for managing themes and colors
class ThemeHelper {
  var apptheme = PrefUtils().getThemeData();////error 
  Map<String, LightCodeColors> supportedCustomColor = {
    'lightCode': LightCodeColors()
  };
  Map<String, ColorScheme> supportedColorScheme = <String, ColorScheme>{
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  void changeTheme(String newTheme) {
    PrefUtils().setThemeData(newTheme);/////error
    Get.forceAppUpdate();
  }

  LightCodeColors getThemeColors() {
    return supportedCustomColor[apptheme] ?? LightCodeColors();
  }

  ThemeData getThemeData() {
    var ColorScheme =
        supportedColorScheme[apptheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: ColorScheme,
      textTheme: TextThemes.textTheme(ColorScheme),
      scaffoldBackgroundColor: AppTheme.gray100,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: AppTheme.blueGray10002,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          visualDensity: VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return ColorScheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: VisualDensity(vertical: -4, horizontal: -4),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: ColorScheme.primary.withOpacity(0.65),
      ),
    );
  }

  LightCodeColors themeColor() => getThemeColors();

  ThemeData themeData() => getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: AppTheme.gray70002,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: AppTheme.blueGray200,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: AppTheme.tealA700,
          fontSize: 40.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
            color: colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 30.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700),
        headlineSmall: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 25.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400),
        labelLarge: TextStyle(
            color: AppTheme.black900,
            fontSize: 12.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500),
        labelMedium: TextStyle(
            color: colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 10.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
          color: AppTheme.blueGray40001,
          fontSize: 9.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
            color: AppTheme.lightgreenA700,
            fontSize: 20.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700),
        titleMedium: TextStyle(
          color: AppTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
            color: AppTheme.black900,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500),
      );
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF0B6158),
    secondaryContainer: Color(0XFF484E50),
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0X0FD90000),
  );
}

class LightCodeColors {
  //amber
  Color get amber300 => Color(0XFFF6C956);

//black
  Color get black900 => Color(0XFF000000);

//blue
  Color get blue300 => Color(0XFF6DA8EC);
  Color get blue30023 => Color(0X236EA8ED);

//blueGray
  Color get blueGray100 => Color(0XFFD6D6D6);
  Color get blueGray10001 => Color(0XFFD5D5D5);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray200 => Color(0XFFB5B5C3);
  Color get blueGray20001 => Color(0XFFBAC0CA);
  Color get blueGray300 => Color(0XFF9FA5B5);
  Color get blueGray400 => Color(0XFF8C8C8C);
  Color get blueGray40001 => Color(0XFF8A8A8A);
  Color get blueGray40002 => Color(0XFF8B8B8B);
  Color get blueGray40003 => Color(0XFF888888);
  Color get blueGray50 => Color(0XFFEEF0F4);
  Color get blueGray500 => Color(0XFF667080);
  Color get blueGray700 => Color(0XFF515151);
  Color get blueGray70001 => Color(0XFF464E5F);
  Color get blueGray800 => Color(0XFF3E4259);
  Color get blueGray5009e => Color(0X9E666F80);

//deepOrange
  Color get deepOrangeA400 => Color(0XFFFF2517);

//deepPurple
  Color get deepPurple900 => Color(0XFF1F1CAB);
  Color get deepPurple90019 => Color(0X191F1DAB);

//Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray10001 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray20001 => Color(0XFFECECEC);
  Color get gray20002 => Color(0XFFF0F0F0);
  Color get gray20003 => Color(0XFFE8E8E8);
  Color get gray20004 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFE1E1E1);
  Color get gray30001 => Color(0XFFE5E5E5);
  Color get gray400 => Color(0XFFBCBCBC);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray500 => Color(0XFF9A9A9A);
  Color get gray50001 => Color(0XFFABABAB);
  Color get gray50002 => Color(0XFFA6A6A6);
  Color get gray50003 => Color(0XFFA8A8A8);
  Color get gray600 => Color(0XFF757575);
  Color get gray60099 => Color(0X997E7E7E);
  Color get gray700 => Color(0XFF734A3E);
  Color get gray70001 => Color(0XFF5D5D5D);
  Color get gray70002 => Color(0XFF555555);
  Color get gray800 => Color(0XFF424242);
  Color get gray900 => Color(0XFF0E132F);
  Color get gray90001 => Color(0XFF151515);

//Grayf
  Color get gray40007f => Color(0X7FC4C4C4);

//Green
  Color get green600 => Color(0XFF559E49);
  Color get green60001 => Color(0XFF28B336);
  Color get green700 => Color(0XFF459239);
  Color get greenA200 => Color(0XFF84FF97);

//LightGreen
  Color get lightgreen100 => Color(0XFFD4FBDB);
  Color get lightgreen400 => Color(0XFF96D279);
  Color get lightgreenA700 => Color(0XFF38CF1F);

//Lime
  Color get lime300 => Color(0XFFD2CE79);
  Color get lime700 => Color(0XFFC89811);
  Color get lime70001 => Color(0XFFCA9910);

//Indigo
  Color get indigo300 => Color(0XFF7B79A2D2);
  Color get indigo30001 => Color(0XFF79A2D2);

//Teal
  Color get teal500 => Color(0XFF109B82);
  Color get teal800 => Color(0XFF0B6058);
  Color get tealA700 => Color(0XFF00AB9A);
  Color get tealA70001 => Color(0XFF00BEA4);

  //Purple
  Color get purple300 => Color(0XFFC079D2);

  //Red
  Color get red100 => Color(0XFFFFD5D2);
  Color get red300 => Color(0XFFD27979);
  Color get redA100 => Color(0XFFFF918A);
  Color get redA700 => Color(0XFFFF0000);
  Color get redA70001 => Color(0XFFEC0202);

  //Yellow
  Color get yellow800 => Color(0XFFDFA80F);
}
