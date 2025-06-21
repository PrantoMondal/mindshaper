import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/module/auth/views/sign_in_view.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/asset_image_view.dart';
import 'package:mindshaper/src/module/splash/controllers/splash_controller.dart';

class SplashView extends BaseView<SplashController> {
  SplashView();

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            child: AnimatedSplashScreen.withScreenFunction(
              duration: 4500,
              splash: AssetImageView(fileName: 'app_logo.svg', height: 200, width: double.infinity),
              splashTransition: SplashTransition.scaleTransition,
              backgroundColor: AppColors.baseWhite,
              screenFunction: () async {
                return SignInView();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.primaryDarker;
  }

  @override
  Color statusBarColor() {
    return AppColors.baseWhite;
  }
}
