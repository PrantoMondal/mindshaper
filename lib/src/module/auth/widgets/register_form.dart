import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/utils/utils/validators.dart';
import 'package:mindshaper/src/module/auth/controllers/registration_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/input_label.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:mindshaper/src/module/shared/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class RegistrationForm extends StatelessWidget with BaseWidgetMixin {
  RegistrationForm({super.key, required this.controller});

  final RegistrationController controller;

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputLabel(title: "Full Name"),
            RoundedTextInputField(
              prefixIcon: Icon(PhosphorIcons.userCircle(), color: AppColors.slate600, size: AppValues.icon_18),
              hintText: "Enter Full Name",
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   name: value,
                //   username: value.removeAllWhitespace,
                // );
              },
              keyboardType: TextInputType.emailAddress,
              validator: Validator.validateUserName,
            ),
            SizedBox(height: AppValues.gapXSmall),
            InputLabel(title: "Email"),
            RoundedTextInputField(
              prefixIcon: Icon(PhosphorIcons.envelope(), color: AppColors.slate600, size: AppValues.icon_18),
              hintText: "Enter Email",
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   email: value,
                // );
              },
              keyboardType: TextInputType.emailAddress,
              validator: Validator.validateEmail,
            ),
            SizedBox(height: AppValues.gapXSmall),
            InputLabel(title: "Password"),
            RoundedTextInputField(
              hintText: "Password",
              prefixIcon: Icon(PhosphorIcons.lock(), color: AppColors.slate600, size: AppValues.icon_18),
              suffixIcon: IconButton(
                onPressed: controller.togglePasswordVisibility,
                icon: Icon(
                  controller.isObscurePassword ? PhosphorIcons.eyeSlash() : PhosphorIcons.eye(),
                  color: AppColors.slate600,
                  size: AppValues.icon_18,
                ),
              ),
              isObscure: controller.isObscurePassword,
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   password: value,
                // );
              },
              validator: Validator.validatePassword,
            ),
            SizedBox(height: AppValues.gapXSmall),
            InputLabel(title: "Confirm Password"),
            RoundedTextInputField(
              hintText: "Re-enter password",
              prefixIcon: Icon(PhosphorIcons.lock(), color: AppColors.slate600, size: AppValues.icon_18),
              suffixIcon: IconButton(
                onPressed: controller.toggleConfirmPasswordVisibility,
                icon: Icon(
                  controller.isObscureConfirmPassword ? PhosphorIcons.eyeSlash() : PhosphorIcons.eye(),
                  color: AppColors.slate600,
                  size: AppValues.icon_18,
                ),
              ),
              isObscure: controller.isObscureConfirmPassword,
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   passwordConfirmation: value,
                // );
              },
              validator: (value) {
                // return Validator.validateConfirmPassword(
                //   value,
                //   controller.params.value.password,
                // );
              },
            ),
          ],
        ),
      );
    });
  }
}
