import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/module/home/controllers/home_controller.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:flutter/material.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container();
  }

  @override
  Color statusBarColor() {
    return AppColors.baseWhite;
  }
}
