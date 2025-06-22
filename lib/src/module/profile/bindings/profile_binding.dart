import 'package:get/get.dart';
import 'package:mindshaper/src/module/profile/controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() {
      return ProfileController();
    },
    fenix: true);
  }
}