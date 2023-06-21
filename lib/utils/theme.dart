import 'package:flutter/material.dart';

import 'colors.dart';

extension ThemeMethods on BuildContext {
  ///Returns [ThemeData] for the current [BuildContext].
  ThemeData get theme => Theme.of(this);
}

///Extension for getting [AppColors] for a theme.
extension ThemeColors on ThemeData {
  ///Returns [AppColors] for the current theme's [Brightness].
  AppColors get colors {
    return const AppColors();
  }
}

const ralewayFontFamily = "Raleway";

///Class used to store application themes styles
class AppTheme {
  ///Returns light [ThemeData] for app
  static ThemeData get light {
    final textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
    const appColors = AppColors();
    final h1 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 32,
      height: 1.37,
      color: appColors.black,
    );
    final h2 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 1.37,
      color: appColors.black,
    );
    final h3 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: 1.38,
      color: appColors.black,
    );
    final h4 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.37,
      color: appColors.black,
    );
    final h5 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      height: 1.36,
      color: appColors.black,
    );
    final body1 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.36,
      color: appColors.black,
    );
    final body2 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.57,
      color: appColors.black,
    );
    final button = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.37,
      color: appColors.black,
    );
    final buttonSmall = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      height: 1.33,
      color: appColors.black,
    );
    final subtitle1 = TextStyle(
      fontFamily: ralewayFontFamily,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: 1.33,
      color: appColors.black,
    );

    final theme = ThemeData(
      scaffoldBackgroundColor: appColors.white,
      textTheme: TextTheme(
        headline1: h1,
        headline2: h2,
        headline3: h3,
        headline4: h4,
        headline5: h5,
        bodyText1: body1,
        bodyText2: body2,
        subtitle1: subtitle1,
        subtitle2: buttonSmall,
        button: button,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.white,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: appColors.black,
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
    return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: appColors.black,
      ),
    );
  }
}
