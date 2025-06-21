import 'package:mindshaper/src/module/auth/controllers/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(() {
      return RegistrationController();
    }, fenix: true);
  }
}
