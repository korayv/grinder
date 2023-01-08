import 'dart:ui';

import 'package:flutter/material.dart';
import 'app-colors.dart';

class AppThemeData {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Arimo',
    textTheme: TextTheme(
      //for splash context
      headline1: TextStyle(
          color: AppColors.primary,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          wordSpacing: 0.5),
      headline6: TextStyle(
          color: AppColors.warning,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          wordSpacing: 0.5),
      //Main
      bodyText2: TextStyle(
          color: AppColors.blackText,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          wordSpacing: 0.5),
      //for navigation titles 'home' and ' Profile'
      titleSmall: TextStyle(
          color: AppColors.textGray,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          wordSpacing: 0.5),
    ),
  );
}
