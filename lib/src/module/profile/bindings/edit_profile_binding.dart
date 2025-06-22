import 'package:get/get.dart';
import 'package:mindshaper/src/module/profile/controllers/edit_profile_controller.dart';

class EditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(() {
      return EditProfileController();
    }, fenix: true);
  }
}
