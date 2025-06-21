import 'dart:async';

import 'package:mindshaper/src/core/constants/app_strings.dart';
import 'package:mindshaper/src/core/local/preferences/preference_manager.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/shared/base/base_controller.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {
  final PreferenceManager preferenceManager;
  // final PermissionService permissionService;

  SplashController({
    required this.preferenceManager,
    // required this.permissionService,
  });

  @override
  void onInit() async {
    super.onInit();
    // _navigateToNext();
  }

  Future<void> _navigateToNext() async {
    await Future.delayed(Duration(seconds: 4));
    Get.offAndToNamed(Routes.SIGNIN);
  }
}
