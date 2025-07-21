import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:get/get.dart";
import "../../../config/constants.dart";
import "../../../config/strings.dart";
import "../controller/sign_in_controller.dart";

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static const String route = "/signin";

  @override
  Widget build(final BuildContext context) {
    final SignInController controller = Get.find<SignInController>();
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder:
              (
                final BuildContext context,
                final BoxConstraints constraints,
              ) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppConstants.kScreenPadding,
                      ),
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
                              style: textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(16),
                          TextField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              hintText: AppString.emailHintText,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color(0xFFEBEBEB),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFD43B),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          const Gap(16),
                          TextField(
                            controller: controller.passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: AppString.passwordHintText,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color(0xFFEBEBEB),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Color(0xFFFFD43B),
                                  width: 2,
                                ),
                              ),
                              suffixIcon: const Icon(Icons.visibility_off),
                            ),
                          ),
                          const Gap(20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(AppString.signIn),
                            ),
                          ),
                          const Gap(20),
                          Row(
                            children: <Widget>[
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xFFEBEBEB),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppConstants.kScreenPadding,
                                ),
                                child: Text(
                                  AppString.or,
                                  style: textTheme.bodyMedium,
                                ),
                              ),
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: Color(0xFFEBEBEB),
                                ),
                              ),
                            ],
                          ),
                          const Gap(16),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    backgroundColor: const Color(0xFFEBEBEB),
                                    side: const BorderSide(
                                      color: Color(0xFFEBEBEB),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    AppString.google,
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF212529),
                                        ),
                                  ),
                                ),
                              ),
                              const Gap(16),
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    backgroundColor: const Color(0xFFEBEBEB),
                                    side: const BorderSide(
                                      color: Color(0xFFEBEBEB),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    AppString.facebook,
                                    style: context.textTheme.bodyMedium
                                        ?.copyWith(
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
                ),
              ),
        ),
      ),
    );
  }
}
