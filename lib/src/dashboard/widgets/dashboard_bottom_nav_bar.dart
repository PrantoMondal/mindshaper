import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';


class DashboardBottomNavBar extends StatelessWidget with BaseWidgetMixin {
  DashboardBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final Function(int value) onTap;

  @override
  Widget body(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom > 0 // hide bottom nav when keyboard opens
        ? SizedBox()
        : BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: AppColors.primaryDarker,
      unselectedItemColor: AppColors.slate600,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      iconSize: AppValues.icon_18,
      selectedLabelStyle: kTextSMMedium.copyWith(
        color: AppColors.primaryDarker,
      ),
      unselectedLabelStyle: kTextSMMedium.copyWith(
        color: AppColors.slate600,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.house()),
          activeIcon: Icon(PhosphorIcons.house(PhosphorIconsStyle.fill)),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.calendar()),
          activeIcon: Icon(PhosphorIcons.calendar(PhosphorIconsStyle.fill)),
          label: "Booking",
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.clockCounterClockwise()),
          activeIcon: Icon(PhosphorIcons.clockCounterClockwise(PhosphorIconsStyle.fill)),
          label: "History",
        ),
        BottomNavigationBarItem(
          icon: Icon(PhosphorIcons.userCircle()),
          activeIcon: Icon(PhosphorIcons.userCircle(PhosphorIconsStyle.fill)),
          label: "Profile",
        ),
      ]
      ,
    );
  }
}
