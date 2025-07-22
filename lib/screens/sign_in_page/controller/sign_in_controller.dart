import "package:flutter/material.dart";
import "package:get/get.dart";

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signIn() async {
    final String email = emailController.text.trim();
    final String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter email and password");
      return;
    }

    Get.snackbar("Info", "Email: $email\nPassword: $password");
  }
}
