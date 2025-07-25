import "dart:async";

import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:get/get.dart";
import "../../../config/constants.dart";
import "../../../config/strings.dart";
import "../../../widgets/text_field_widget.dart";
import "../controller/sign_in_controller.dart";

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});
  static const String route = "/signin";

  @override
  Widget build(final BuildContext context) => Scaffold(
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.kScreenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Placeholder(color: Colors.white54),
              ),
            ),
            const Gap(30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppString.signIn,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(16),
            CustomTextField(
              controller: controller.emailController,
              hintText: AppString.emailHintText,
            ),
            const Gap(16),
            CustomTextField(
              controller: controller.passwordController,
              hintText: AppString.passwordHintText,
              obscureText: true,
              suffixIcon: const Icon(Icons.visibility_off),
            ),
            const Gap(20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  unawaited(controller.signIn());
                },
                child: const Text(AppString.signIn),
              ),
            ),
            const Gap(20),
            Row(
              children: <Widget>[
                const Expanded(
                  child: Divider(thickness: 1, color: Color(0xFFEBEBEB)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.kScreenPadding,
                  ),
                  child: Text(
                    AppString.or,
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                const Expanded(
                  child: Divider(thickness: 1, color: Color(0xFFEBEBEB)),
                ),
              ],
            ),
            const Gap(16),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBEBEB),
                      foregroundColor: const Color(0xFF212529),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      AppString.google,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF212529),
                      ),
                    ),
                  ),
                ),
                const Gap(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBEBEB),
                      foregroundColor: const Color(0xFF212529),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      AppString.facebook,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF212529),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(24),
            Center(
              child: Text(
                AppString.signUpPrompt,
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
