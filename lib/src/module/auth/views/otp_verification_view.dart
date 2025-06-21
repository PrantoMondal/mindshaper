import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_themes.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/auth/controllers/otp_verification_controller.dart';
import 'package:mindshaper/src/module/auth/widgets/auth_header.dart';
import 'package:mindshaper/src/module/auth/widgets/input_label.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/application_bar.dart';
import 'package:mindshaper/src/module/shared/widgets/primary_button.dart';
import 'package:mindshaper/src/module/shared/widgets/ripple.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:pinput/pinput.dart';

class OTPVerificationView extends BaseView<OTPVerificationController> {
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
    final arguments = Get.arguments;
    logger.d(arguments);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppValues.gap),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthHeader(
              screenTitle: arguments == "forgot_pass" ? "Forgot Password" : "Verification",
              screenSubTitle: "An OTP code has been sent to this email example@gmail.com for verification",
            ),
            SizedBox(height: AppValues.gapXLarge),
            InputLabel(title: "Enter the OTP"),
            SizedBox(height: AppValues.gapXSmall),
            Center(
              child: Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                onChanged: (value) {
                  controller.otpLength.value = value.length;
                  // controller.params.value = controller.params.value.copyWith(
                  //   otp: value,
                  // );
                },
                length: 6,
              ),
            ),
            SizedBox(height: AppValues.gapXLarge),
            Center(
              child: Obx(() {
                final seconds = controller.remainingSeconds.value;
                final isWaiting = seconds > 0;

                return Text.rich(
                  TextSpan(
                    text: "Did not receive OTP?",
                    style: kTextSMNormal.copyWith(color: AppColors.slate600),
                    children: [
                      WidgetSpan(child: SizedBox(width: AppValues.gap_4)),
                      TextSpan(
                        text: isWaiting ? "Resend (${seconds}s)" : "Resend",
                        style: kTextSMNormal.copyWith(color: isWaiting ? AppColors.slate400 : AppColors.green600),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                if (!isWaiting) controller.resendOtp();
                              },
                      ),
                    ],
                  ),
                );
              }),
            ),
            SizedBox(height: AppValues.gapXLarge),
            Obx(() {
              return PrimaryButton(
                onPressed:
                    controller.otpLength < 6
                        ? null
                        : () {
                          arguments == "forgot_pass"
                              ? Get.toNamed(Routes.RESET_PASSWORD)
                              : Get.offAndToNamed(Routes.HOME);
                        },
                width: double.infinity,
                height: AppValues.container_40,
                title: "Verify",
              );
            }),

            SizedBox(height: AppValues.gapXLarge),
          ],
        ),
      ),
    );
  }
}
