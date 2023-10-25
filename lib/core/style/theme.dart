import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: defGraffiti,
        size: 24,
      ),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: defGraffiti,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Poppins",
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.white,
    ),
    cardColor: defCardLigth,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: defGraffiti,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: const TextStyle(
        color: defGraffiti,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: const TextStyle(
        color: defGraffiti,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: TextStyle(
        color: defGraffiti,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: defColorStrongDark,
      iconTheme: const IconThemeData(
        color: defTextDark,
        size: 24,
      ),
      titleTextStyle: TextStyle(
        color: defTextDark,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      centerTitle: true,
      elevation: 0,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: defColorStrongDark,
    ),
    scaffoldBackgroundColor: defColorStrongDark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Poppins",
    drawerTheme: const DrawerThemeData(
      backgroundColor: defColorStrongDark,
    ),
    cardColor: defColorMediumDark,
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: defTextDark,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: const TextStyle(
        color: defTextDark,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: const TextStyle(
        color: defTextDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: TextStyle(
        color: defGraffiti,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
