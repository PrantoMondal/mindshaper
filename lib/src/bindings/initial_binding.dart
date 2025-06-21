import 'package:mindshaper/src/core/local/preferences/preference_manager_impl.dart';
import 'package:mindshaper/src/module/auth/controllers/sign_in_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreferenceManagerImpl(), fenix: true);
  }
}
