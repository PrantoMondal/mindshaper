import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

abstract class Validator {
  static final _appLocalizations = AppLocalizations.of(Get.context!)!;

  static String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.nameValidate;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.emailValidate;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.passwordValidate;
    }
    return null;
  }

  static String? validateOldPassword(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.oldPasswordValidate;
    }
    return null;
  }

  static String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.newPasswordValidate;
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty || password != password) {
      return _appLocalizations.confirmPasswordValidate;
    }
    return null;
  }

  static String? validateRequiredField(String? value) {
    if (value == null || value.isEmpty) {
      return _appLocalizations.requiredField;
    }
    return null;
  }
}
