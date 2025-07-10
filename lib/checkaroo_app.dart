import "package:flutter/material.dart";
import "package:get/get.dart";
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
    getPages: <GetPage<dynamic>>[
      GetPage<dynamic>(
        name: OnboardingScreen.route,
        page: () => const OnboardingScreen(),
      ),
    ],
  );
}
