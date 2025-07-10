import "package:get/get.dart";
import "../screens/onboarding_screen/view/onboarding_screen.dart";

class AppRoutes {
  AppRoutes._();

  static const String onboarding = "/onboarding";

  static final List<GetPage<dynamic>> pages = <GetPage<dynamic>>[
    GetPage<dynamic>(name: onboarding, page: OnboardingScreen.new),
  ];
}
