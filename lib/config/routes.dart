import "package:get/get.dart";
import "../screens/onboarding_screen/view/onboarding_screen.dart";

class AppRoutes {
  AppRoutes._();

  static const String onboarding = "/onboarding";

  static final List<GetPage<void>> pages = <GetPage<void>>[
    GetPage<void>(name: onboarding, page: OnboardingScreen.new),
  ];
}
