import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "../../../config/appstring.dart";
import "../../../widgets/button.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(16),
                child: const Placeholder(
                  fallbackHeight: 280,
                  color: Colors.white54,
                ),
              ),

              const Gap(28),

              Text(
                AppString.onBoardingHeading,
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Gap(12),

              Text(
                AppString.onBoardingContent,
                style: textTheme.bodyMedium?.copyWith(
                  //fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              CommonButton(
                onPressed: () {
                  // Navigate to sign-in screen here
                },
                label: AppString.getStarted,
              ),

              const Gap(12),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: AppString.getStartedDialog,
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: AppString.signIn,
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
