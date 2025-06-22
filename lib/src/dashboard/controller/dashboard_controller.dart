import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/module/home/views/home_view.dart';
import 'package:mindshaper/src/module/profile/views/edit_profile_view.dart';
import 'package:mindshaper/src/module/profile/views/profile_view.dart';
import 'package:mindshaper/src/module/shared/base/base_controller.dart';

class DashboardController extends BaseController {
  final _navIndex = 0.obs;

  int get navIndex => _navIndex.value;



  @override
  void onInit() {
    super.onInit();
  }

  final pages = [
    HomeView(),
    Container(child: Center(child: Text("Booking",style: kTextSMBold.copyWith(color: AppColors.slate600),)),),
    Container(child: Center(child: Text("History",style: kTextSMBold.copyWith(color: AppColors.slate600),)),),
   ProfileView()

  ];

  void changeNavigationIndex(int value) async {

    _navIndex.value = value;
  }
}
