import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/auth/controllers/forgot_pass_controller.dart';
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

class ForgotPassView extends BaseView<ForgotPassController> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthHeader(screenTitle: "Forgot Password", screenSubTitle: "Enter the email associated with your account"),

            SizedBox(height: AppValues.gapXLarge),
            InputLabel(title: "Email"),
            SizedBox(height: AppValues.gapXSmall),
            RoundedTextInputField(
              hintText: "Enter email",
              prefixIcon: Icon(PhosphorIcons.envelope(), color: AppColors.slate600, size: AppValues.icon_20),
              suffixIcon: null,
              isObscure: false,
              onChange: (value) {
                // controller.params.value = controller.params.value.copyWith(
                //   email: value,
                // );
              },
            ),
            SizedBox(height: AppValues.gapXLarge),

            PrimaryButton(
              onPressed: () {
                Get.toNamed(Routes.VERIFICATION, arguments: "forgot_pass");
              },
              width: double.infinity,
              height: AppValues.container_40,
              title: "Send OTP",
            ),

            SizedBox(height: AppValues.gapXLarge),
          ],
        ),
      ),
    );
  }
}
