import 'package:get/get.dart';
import 'package:mindshaper/src/dashboard/controller/dashboard_controller.dart';
import 'package:mindshaper/src/module/home/bindings/home_binding.dart';
import 'package:mindshaper/src/module/profile/bindings/profile_binding.dart';

class DashboardBindings extends Bindings {
  @override
  void dependencies() {
    HomeBinding().dependencies();
    ProfileBinding().dependencies();

    Get.lazyPut<DashboardController>(
          () => DashboardController(),
    );
  }
}