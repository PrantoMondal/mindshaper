import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/auth/controllers/registration_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/auth_header.dart';
import 'package:mindshaper/src/module/auth/widgets/login_form.dart';
import 'package:mindshaper/src/module/auth/widgets/register_form.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/primary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationView extends BaseView<RegistrationController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppValues.gap),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppValues.gapXLarge),
            AuthHeader(
              screenTitle: "Register",
              screenSubTitle: "Register a new account by providing required credentials",
            ),
            SizedBox(height: AppValues.gapLarge),
            RegistrationForm(controller: controller),
            SizedBox(height: AppValues.gapLarge),
            // Login Button
            PrimaryButton(
              onPressed: () {
                Get.toNamed(Routes.VERIFICATION);
              },
              width: double.infinity,
              height: AppValues.container_40,
              title: "Register",
            ),
            SizedBox(height: AppValues.gap),
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Already have an account?",
                  style: kTextSMNormal.copyWith(color: AppColors.slate600),
                  children: [
                    WidgetSpan(child: SizedBox(width: AppValues.gap_4)),
                    TextSpan(
                      text: "Login Here",
                      style: kTextSMNormal.copyWith(color: AppColors.green500),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAndToNamed(Routes.SIGNIN);
                            },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppValues.gapXLarge),
          ],
        ),
      ),
    );
  }

  @override
  Color statusBarColor() {
    return AppColors.baseWhite;
  }
}
