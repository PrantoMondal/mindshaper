import 'package:mindshaper/src/module/auth/controllers/forgot_pass_controller.dart';
import 'package:get/get.dart';

class ForgotPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPassController>(() {
      return ForgotPassController();
    }, fenix: true);
  }
}
