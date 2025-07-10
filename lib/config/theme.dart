import "package:flutter/material.dart";

class AppTheme {
  const AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    fontFamily: "Lexend",
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFD43B)),
    useMaterial3: true,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Lexend",
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFD43B),
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );
}
