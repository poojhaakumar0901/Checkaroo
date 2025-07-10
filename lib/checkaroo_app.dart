import "package:flutter/material.dart";
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
  );
}
