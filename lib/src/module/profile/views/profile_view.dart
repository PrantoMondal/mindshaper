import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:mindshaper/src/module/profile/controllers/profile_controller.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends BaseView<ProfileController>{
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        _buildProfileInfo(),
        Divider(),
        ListTile(
          leading: Icon(PhosphorIcons.userCircle(), color: AppColors.slate500),
          title: Text("Edit Profile", style: kTextSMMedium),
          onTap: () {
            Get.toNamed(Routes.EDIT_PROFILE);
          },
        ),
        ListTile(
          leading: Icon(PhosphorIconsRegular.gear, color: AppColors.slate500),
          title: Text("Settings", style: kTextSMMedium),
          onTap: () {
            //Get.toNamed(Routes.SETTINGS);
          },
        ),
        Spacer(),
        ListTile(
          leading: Icon(PhosphorIconsRegular.signOut, color: AppColors.red600),
          title: Text("Logout", style: kTextSMMedium.copyWith(color: AppColors.red600)),
          onTap: () {
            // Add logout functionality here
            Get.offAllNamed(Routes.SIGNIN);
          },
        ),
        SizedBox(height: AppValues.gap),

      ],
    );
  }


  _buildProfileInfo() {
    return Padding(
      padding: const EdgeInsets.all(AppValues.gap),
      child: Row(
        children: [
           Container(
            width: AppValues.container_60,
            height: AppValues.container_60,
            decoration: BoxDecoration(
              color: AppColors.slate200,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColors.slate200,
              ),
            ),
            child: Icon(PhosphorIcons.userCircle(), size: AppValues.container_30, color: AppColors.slate500),
          ),
          SizedBox(
            width: AppValues.space_10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                style: kTextSMMedium,
              ),
              Text(
                "user@gmail.com",
                style: kTextSMMedium,
              ),
            ],
          )
        ],
      ),
    );
  }

}