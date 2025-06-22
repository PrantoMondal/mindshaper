import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/module/home/controllers/home_controller.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:flutter/material.dart';
import 'package:mindshaper/src/module/shared/widgets/application_bar.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar();
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Welcome to MindShaper',
          style: TextStyle(
            fontSize: 24,
            color: AppColors.slate600,
          ),
        ),
      ),
    );
  }

  @override
  Color statusBarColor() {
    return AppColors.baseWhite;
  }
}
