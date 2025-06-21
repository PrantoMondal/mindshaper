import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/utils/utils/validators.dart';
import 'package:mindshaper/src/module/auth/controllers/sign_in_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/input_label.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:mindshaper/src/module/shared/widgets/checkbox_tile.dart';
import 'package:mindshaper/src/module/shared/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LoginForm extends StatelessWidget with BaseWidgetMixin {
  LoginForm({super.key, required this.controller});

  final SignInController controller;

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InputLabel(title: "Email"),
            RoundedTextInputField(
              prefixIcon: Icon(PhosphorIcons.envelope(), color: AppColors.slate600, size: AppValues.icon_20),
              hintText: "Enter email",
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   email: value,
                // );
              },
              validator: Validator.validateEmail,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: AppValues.gapSmall),
            InputLabel(title: "Password"),
            RoundedTextInputField(
              hintText: "Password",
              prefixIcon: Icon(PhosphorIcons.lock(), color: AppColors.slate600, size: AppValues.icon_20),
              suffixIcon: IconButton(
                onPressed: controller.togglePassword,
                icon: Icon(
                  controller.isObscure ? PhosphorIcons.eyeSlash() : PhosphorIcons.eye(),
                  color: AppColors.slate600,
                  size: AppValues.icon_20,
                ),
              ),
              isObscure: controller.isObscure,
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   password: value,
                // );
              },
              validator: Validator.validatePassword,
            ),
            SizedBox(height: AppValues.gap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckboxTile(
                  onChange: (value) {
                    controller.toggleSavePassword(value);
                  },
                  title: "Remember Me",
                ),
                GestureDetector(
                  onTap: controller.goToForgotPassword,
                  child: Text("Forgot Password?", style: kTextSMNormal.copyWith(color: AppColors.green500)),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
