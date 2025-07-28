import "package:get/get.dart";
import "../screens/onboarding_screen/view/onboarding_screen.dart";
import "../screens/sign_in_page/binding/sign_in_binding.dart";
import "../screens/sign_in_page/view/sign_in.dart";

class AppRoutes {
  AppRoutes._();

  static const String onboarding = "/onboarding";
  static const String signIn = "/signin";

  static final List<GetPage<void>> pages = <GetPage<void>>[
    GetPage<void>(name: onboarding, page: OnboardingScreen.new),
    GetPage<void>(
      name: signIn,
      page: SignInScreen.new,
      binding: SignInBinding(),
    ),
  ];
}
