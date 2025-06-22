import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/auth/controllers/reset_pass_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/auth_header.dart';
import 'package:mindshaper/src/module/auth/widgets/input_label.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/application_bar.dart';
import 'package:mindshaper/src/module/shared/widgets/primary_button.dart';
import 'package:mindshaper/src/module/shared/widgets/ripple.dart';
import 'package:mindshaper/src/module/shared/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ResetPassView extends BaseView<ResetPassController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      leading: Ripple(
        onTap: () {
          Get.back();
        },
        child: Icon(PhosphorIcons.caretLeft(), size: AppValues.icon_28),
      ),
    );
  }

  @override
  Widget body(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppValues.gap),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(
                screenTitle: "Reset Password",
                screenSubTitle:
                    "Reset your password. Make sure to use combination of Uppercase, Lowercase, Numbers and Special characters",
              ),
              SizedBox(height: AppValues.gapXLarge),
              InputLabel(title: "Password"),
              RoundedTextInputField(
                hintText: "Enter Password",
                prefixIcon: Icon(PhosphorIcons.lock(), color: AppColors.slate600, size: AppValues.icon_20),
                suffixIcon: IconButton(
                  onPressed: controller.togglePasswordVisibility,
                  icon: Icon(
                    controller.isObscurePassword ? PhosphorIcons.eyeSlash() : PhosphorIcons.eye(),
                    color: AppColors.slate600,
                    size: AppValues.icon_20,
                  ),
                ),
                isObscure: controller.isObscurePassword,
                onChange: (value) {
                  // controller.params.value = controller.params.value.copyWith(
                  //   password: value,
                  // );
                },
              ),
              SizedBox(height: AppValues.gapXSmall),
              InputLabel(title: "Confirm Password"),
              RoundedTextInputField(
                hintText: "Confirm Password",
                prefixIcon: Icon(PhosphorIcons.lock(), color: AppColors.slate600, size: AppValues.icon_20),
                suffixIcon: IconButton(
                  onPressed: controller.toggleConfirmPasswordVisibility,
                  icon: Icon(
                    controller.isObscureConfirmPassword ? PhosphorIcons.eyeSlash() : PhosphorIcons.eye(),
                    color: AppColors.slate600,
                    size: AppValues.icon_20,
                  ),
                ),
                isObscure: controller.isObscureConfirmPassword,
                onChange: (value) {
                  // controller.params.value = controller.params.value.copyWith(
                  //   password: value,
                  // );
                },
              ),

              SizedBox(height: AppValues.gapXLarge),
              PrimaryButton(
                onPressed: () {
                  Get.offAndToNamed(Routes.SIGNIN);
                },
                width: double.infinity,
                height: AppValues.container_40,
                title: "Reset",
              ),

              SizedBox(height: AppValues.gapXLarge),
            ],
          );
        }),
      ),
    );
  }
}
