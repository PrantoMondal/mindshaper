import 'dart:async';

import 'package:mindshaper/src/module/shared/base/base_controller.dart';
import 'package:get/get.dart';

class OTPVerificationController extends BaseController {
  final otpLength = 0.obs;

  final int initialSeconds = 120;
  late Timer _timer;

  RxInt remainingSeconds = 120.obs;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds.value > 0) {
        remainingSeconds.value--;
      } else {
        timer.cancel();
      }
    });
  }

  void resendOtp() {
    // trigger your resend logic here
    remainingSeconds.value = initialSeconds;
    startTimer();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}
