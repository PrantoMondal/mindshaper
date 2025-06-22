import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/dashboard/controller/dashboard_controller.dart';
import 'package:mindshaper/src/dashboard/widgets/dashboard_bottom_nav_bar.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/application_bar.dart';
import 'package:mindshaper/src/module/shared/widgets/asset_image_view.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class DashboardView extends BaseView<DashboardController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      titleWidget: AssetImageView(
        fileName: 'ms.png',
        height: AppValues.gapLarge,
      ),
      actions: [
        IconButton(
          onPressed: () async {
            // final isLoggedIn = await controller.authService.isUserLoggedIn();
            //
            // isLoggedIn
            //     ? Get.toNamed(Routes.NOTIFICATION)
            //     : Fluttertoast.showToast(
            //   msg: appLocalization.pleaseLoginToAccess,
            //   toastLength: Toast.LENGTH_SHORT,
            //   gravity: ToastGravity.BOTTOM,
            // );
          },
          icon: Badge(
            label: Text("2"),
            backgroundColor: AppColors.red600,
            child: Icon(
              PhosphorIcons.bell(),
              color: AppColors.slate600,
              size: AppValues.icon_18,
            ),
          ),
        ),

      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return Obx(() {
      return controller.pages[controller.navIndex];
    });
  }

  @override
  FloatingActionButtonLocation? floatingActionButtonLocation() {
    return FloatingActionButtonLocation.miniCenterDocked;
  }


  @override
  Widget? bottomNavigationBar() {
    return Obx(() {
      return DashboardBottomNavBar(
        currentIndex: controller.navIndex,
        onTap: controller.changeNavigationIndex,
      );
    });
  }

  @override
  bool? resizeToAvoidBottomInset() {
    return false;
  }
}
