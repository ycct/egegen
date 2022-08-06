import 'package:flutter/material.dart';

class CustomThemeData {
  static Color primaryColorDark = const Color(0xff242424);
  static Color primaryColor = const Color(0xffF79E1B);
  static Color primaryColorLight = const Color(0xffFFD65A);
  static Color secondaryHeaderColor = const Color(0xffE73626);
  static Color errorColor = const Color(0xffE73626);
  static Color disabledColorDark = const Color(0xffA9A9A9);
  static Color disabledColor = const Color(0xffEEECEC);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color blackColor = const Color(0xff000000);
  static ThemeData customLightTheme = ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: primaryColorLight,
    primaryColorDark: primaryColorDark,
    secondaryHeaderColor: secondaryHeaderColor,
    disabledColor: disabledColor,
    hintColor: disabledColorDark,
    dialogBackgroundColor: disabledColorDark,
    appBarTheme: AppBarTheme(backgroundColor: primaryColorLight),
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: primaryColorDark,
      displayColor: primaryColorDark,
    ),
  );
}
