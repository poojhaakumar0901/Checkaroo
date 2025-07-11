import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";

import "config/routes.dart";
import "config/theme.dart";

class CheckarooApp extends StatelessWidget {
  const CheckarooApp({super.key});

  @override
  Widget build(final BuildContext context) => GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Checkaroo",
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    initialRoute: AppRoutes.onboarding,
    getPages: AppRoutes.pages,

    builder: (final BuildContext context, final Widget? child) {
      final ThemeData theme = Theme.of(context);
      final SystemUiOverlayStyle overlayStyle = AppTheme.overlayStyle(
        theme.brightness,
        theme.scaffoldBackgroundColor,
      );
      SystemChrome.setSystemUIOverlayStyle(overlayStyle);
      return child!;
    },
  );
}
