import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  AppTheme._();

  static final primaryTheme = ThemeData(
    // brightness: Brightness.light,
    appBarTheme:
        AppBarTheme(brightness: Brightness.dark, color: AppColor.primary),
    primaryColor: AppColor.primary,
    primaryColorLight: AppColor.primaryLight,
    primaryColorDark: AppColor.primaryDark,
    // primaryColorBrightness: Brightness.light,
    backgroundColor: AppColor.bgScreen,
    fontFamily: 'Primary',
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColor.primaryDark,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: AppColor.primaryDark,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      caption: TextStyle(
        color: AppColor.body,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
      subtitle1: TextStyle(
        color: AppColor.body,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      subtitle2: TextStyle(
        color: AppColor.body,
        fontSize: 13,
        fontWeight: FontWeight.w600,
      ),
      bodyText1: TextStyle(
        color: AppColor.body,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: AppColor.body,
        fontSize: 13,
        fontWeight: FontWeight.w400,
      ),

    ),
  );
}
