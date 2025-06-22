import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/auth/controllers/sign_in_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/auth_header.dart';
import 'package:mindshaper/src/module/auth/widgets/login_form.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/primary_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends BaseView<SignInController> {
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
            AuthHeader(screenTitle: "Sign In", screenSubTitle: "Enter email and password to login"),
            SizedBox(height: AppValues.gapLarge),
            LoginForm(controller: controller),
            SizedBox(height: AppValues.gapLarge),

            // Login Button
            PrimaryButton(
              onPressed: () {
                Get.offAndToNamed(Routes.DASHBOARD);
              },
              width: double.infinity,
              height: AppValues.container_40,
              title: "Login",
            ),

            SizedBox(height: AppValues.gap),

            //  Social Login
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Don't have any account?",
                  style: kTextSMNormal.copyWith(color: AppColors.slate600),
                  children: [
                    WidgetSpan(child: SizedBox(width: AppValues.gap_4)),
                    TextSpan(
                      text: "Register Here",
                      style: kTextSMNormal.copyWith(color: AppColors.green500),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Get.offAndToNamed(Routes.REGISTRATION);
                            },
                    ),
                  ],
                ),
              ),
            ),
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
