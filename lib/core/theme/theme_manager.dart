import 'package:flutter/material.dart';

import 'color_pallete.dart';

abstract class ThemeManager {
  static ThemeData getLightTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: ColorPallete.primaryColor,
      scaffoldBackgroundColor: ColorPallete.scaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: ColorPallete.primaryColor),
        titleTextStyle: const TextStyle(
          color: ColorPallete.primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static ThemeData getDarkTheme() {
    return ThemeData();
  }
}
