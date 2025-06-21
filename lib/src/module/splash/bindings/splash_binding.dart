import 'package:mindshaper/src/core/local/preferences/preference_manager_impl.dart';
import 'package:mindshaper/src/module/auth/bindings/sign_in_binding.dart';
import 'package:mindshaper/src/module/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(preferenceManager: PreferenceManagerImpl.to));

    SignInBinding().dependencies();
  }
}
