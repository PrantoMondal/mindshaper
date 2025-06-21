import 'package:mindshaper/src/module/auth/controllers/reset_pass_controller.dart';
import 'package:get/get.dart';

class ResetPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResetPassController>(() {
      return ResetPassController();
    }, fenix: true);
  }
}
