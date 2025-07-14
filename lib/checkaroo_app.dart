import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";

import "config/routes.dart";
import "config/theme.dart";
import "screens/onboarding_screen/view/onboarding_screen.dart";

class CheckarooApp extends StatelessWidget {
  const CheckarooApp({super.key});

  @override
  Widget build(final BuildContext context) => GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Checkaroo",
    theme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    initialRoute: OnboardingScreen.route,
    getPages: AppRoutes.pages,
    builder: (final BuildContext context, final Widget? child) {
      SystemChrome.setSystemUIOverlayStyle(
        AppTheme.overlayStyle(
          Theme.of(context).brightness,
          Theme.of(context).scaffoldBackgroundColor,
        ),
      );
      return child!;
    },
  );
}
