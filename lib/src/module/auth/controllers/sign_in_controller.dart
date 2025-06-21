import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/shared/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends BaseController {
  final _isObscure = true.obs;
  final _savePassword = false.obs;
  final formKey = GlobalKey<FormState>();

  bool get isObscure => _isObscure.value;

  bool get savePassword => _savePassword.value;

  void togglePassword() {
    _isObscure.value = !_isObscure.value;
  }

  void toggleSavePassword(bool value) {
    _savePassword.value = value;
  }

  void goToForgotPassword() {
    Get.toNamed(Routes.FORGOT_PASSWORD);
  }
}
