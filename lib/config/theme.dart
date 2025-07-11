import "package:flutter/material.dart";
import "package:flutter/services.dart";

class AppTheme {
  const AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    fontFamily: "Lexend",
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFFD43B)),
    useMaterial3: true,

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 15, height: 1.5),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFFFD43B),
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Lexend",
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFD43B),
      brightness: Brightness.dark,
    ),
    useMaterial3: true,

    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 15, height: 1.5),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFFFFD43B),
        foregroundColor: Colors.black,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
  static SystemUiOverlayStyle overlayStyle(
    final Brightness brightness,
    final Color scaffoldColor,
  ) {
    final bool isDark = brightness == Brightness.dark;
    return SystemUiOverlayStyle(
      statusBarColor: scaffoldColor,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
      statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
    );
  }
}
