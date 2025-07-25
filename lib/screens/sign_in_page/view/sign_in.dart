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
    appBar: AppBar(
      title: const Text(AppString.signIn),
      centerTitle: false,
      automaticallyImplyLeading: false,
    ),
    resizeToAvoidBottomInset: false,
    body: SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        behavior: HitTestBehavior.opaque,
        child: LayoutBuilder(
          builder:
              (final BuildContext context, final BoxConstraints constraints) =>
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.kScreenPadding,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: constraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          children: <Widget>[
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
                                onPressed: controller.signIn,
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
                                    style: context.textTheme.bodyMedium,
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
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFEBEBEB),
                                      foregroundColor: const Color(0xFF212529),
                                    ),
                                    child: const Text(AppString.google),
                                  ),
                                ),
                                const Gap(16),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFEBEBEB),
                                      foregroundColor: const Color(0xFF212529),
                                    ),
                                    child: const Text(AppString.facebook),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Gap(16),
                            Center(
                              child: BottomAppBar(
                                color: Colors.transparent,
                                child: Text(
                                  AppString.signUpPrompt,
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
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
