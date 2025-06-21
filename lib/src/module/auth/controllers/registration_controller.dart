import 'package:mindshaper/src/module/shared/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends BaseController {
  final formKey = GlobalKey<FormState>();

  final _isObscurePassword = true.obs;
  final _isObscureConfirmPassword = true.obs;

  bool get isObscurePassword => _isObscurePassword.value;
  bool get isObscureConfirmPassword => _isObscureConfirmPassword.value;

  void togglePasswordVisibility() {
    _isObscurePassword.value = !_isObscurePassword.value;
  }

  void toggleConfirmPasswordVisibility() {
    _isObscureConfirmPassword.value = !_isObscureConfirmPassword.value;
  }
}
