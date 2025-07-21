import "package:flutter/material.dart";
import "package:get/get.dart";
import "../../../database/db_helper.dart";
import "../../../model/user_mode.dart";

class SignInController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final DBHelper dbHelper = DBHelper();

  Future<void> signIn() async {
    final String email = emailController.text.trim();
    final String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter email and password");
      return;
    }

    final UserModel? user = await dbHelper.getUser(email, password);

    if (user != null) {
      Get.snackbar("Success", "Signed in as ${user.email}");
      // Navigate to home screen or dashboard
    } else {
      Get.snackbar("Failed", "Account not found or wrong credentials");
    }
  }
}
