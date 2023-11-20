// ignore_for_file: prefer_const_constructors

import '/themes/colors.dart';
import '/themes/styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get myLightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.whiteColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppColors.primaryColor,
            secondary: AppColors.secondaryColor,
            background: AppColors.whiteColor),
        appBarTheme: AppBarTheme(
            centerTitle: false,
            titleTextStyle: AppTextStyle.titleStyle,
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            iconTheme: IconThemeData(color: AppColors.whiteColor)),
      );

  static ThemeData get myDarkTheme => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[850],
        colorScheme: const ColorScheme.dark().copyWith(
          primary: AppColors.primaryColor,
          secondary: AppColors.secondaryColor,
          surface: Colors.grey[800],
          background: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTextStyle.titleStyle.copyWith(color: Colors.white),
          backgroundColor: Colors.grey[850],
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      );
}
