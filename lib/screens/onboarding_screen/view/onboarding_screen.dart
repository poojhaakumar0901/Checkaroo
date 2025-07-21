import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:get/get.dart";

import "../../../config/constants.dart";
import "../../../config/strings.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String route = "/onboarding";

  @override
  Widget build(final BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.kScreenPadding,
          ),
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
                  height: 1.5,
                  fontSize: 15,
                ),
              ),
              const Gap(20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await Get.toNamed("/signin");
                  },
                  child: const Text(AppString.onBoardingStarted),
                ),
              ),

              const Gap(12),
              Center(
                child: Text(
                  AppString.onBoardingDialog,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF212529),
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
