import 'package:flutter/material.dart';

class LightTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',

    colorScheme: ColorScheme(
      brightness: Brightness.light,

      primary: const Color(0xFF635985), // light purple
      onPrimary: Colors.black,

      secondary: const Color(0xFFBFCFE7), // soft lavender-blue
      onSecondary: Colors.teal[100]!,

      tertiary: const Color(0xFFEADCF2), // pale lavender
      onTertiary: Colors.black,

      surface: const Color(0xFFF9F9F9), // soft near-white
      onSurface: const Color(0xFF393053), // text on white bg

      error: Colors.red,
      onError: Colors.white,
    ),

    scaffoldBackgroundColor: const Color(0xFFFDFDFD), // almost white

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xFF18122B),
        fontWeight: FontWeight.w600,
      ), // 32

      headlineSmall: TextStyle(
        color: Color(0xFF393053),
        fontWeight: FontWeight.w600,
      ), // 24

      titleLarge: TextStyle(
        color: Color(0xFF443C68),
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ), // 22

      bodySmall: TextStyle(color: Color(0xFF777777)), // 12

      bodyMedium: TextStyle(
        color: Color(0xFF393053),
        fontWeight: FontWeight.w500,
      ), // 14

      bodyLarge: TextStyle(
        color: Color(0xFF18122B),
        fontWeight: FontWeight.w400,
      ), // 16

      displayMedium: TextStyle(
        color: Color(0xFF635985), // primary purple
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
