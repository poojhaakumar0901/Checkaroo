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

    textTheme: const TextTheme(bodyMedium: TextStyle(color: Color(0xFF444444))),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFD43B),
        foregroundColor: const Color(0xFF212529),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF121212),
    fontFamily: "Lexend",
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFD43B),
      brightness: Brightness.dark,
    ),
    useMaterial3: true,

    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFD43B),
        foregroundColor: const Color(0xFF212529),
        textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
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
