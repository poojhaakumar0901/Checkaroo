import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:get/get.dart";

import "../../../config/app_constants.dart";
import "../../../config/appstring.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String route = "/onboarding";

  @override
  Widget build(final BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screen,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Placeholder(color: Colors.white54),
                ),
              ),
              const Gap(20),
              Text(
                AppString.onBoardingHeading,
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(12),
              Text(
                AppString.onBoardingContent,
                style: context.theme.textTheme.bodyMedium?.copyWith(
                  color:
                      context.theme.brightness == Brightness.dark
                          ? Colors.white
                          : const Color(0xFF444444),
                ),
              ),
              const Gap(20),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppString.getStarted),
                ),
              ),
              const Gap(12),
              Center(
                child: Text(
                  AppString.getStartedDialog,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(12),
            ],
          ),
        ),
      ),
    );
  }
}
