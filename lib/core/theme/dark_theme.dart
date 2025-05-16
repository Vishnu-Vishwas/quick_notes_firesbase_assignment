import 'package:flutter/material.dart';

class DarkTheme {
  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',

    colorScheme: ColorScheme(
      brightness: Brightness.dark,

      primary: Color(0xFF635985), // light purple
      onPrimary: Colors.white,

      secondary: Color(0xFF393053), // deep purple
      onSecondary: Colors.white,

      tertiary: Color(0xFF443C68), // pale
      onTertiary: Colors.black,

      surface: Color(0xFF18122B),
      onSurface: Color(0xFF443C68),

      error: Colors.red,
      onError: Colors.white,
    ),

    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xffE5E5E5),
        fontWeight: FontWeight.w600,
      ), // 32
      headlineSmall: TextStyle(
        color: Color(0xffFCFCFC),
        fontWeight: FontWeight.w600,
      ), // 24

      titleLarge: TextStyle(color: Colors.white, fontSize: 20), // 22

      bodySmall: TextStyle(color: Color(0xFFE5E5E5)), // 12
      bodyMedium: TextStyle(
        color: Color(0xff777777),
        fontWeight: FontWeight.w500,
      ), // 14
      bodyLarge: TextStyle(
        color: Color(0xFFE5E5E5),
        fontWeight: FontWeight.w300,
      ), // 16

      displayMedium: TextStyle(
        color: Color(0xFF635985), // navy purple
        fontSize: 40, // 45
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
