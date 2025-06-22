import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_themes.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/profile/controllers/edit_profile_controller.dart';
import 'package:mindshaper/src/module/profile/views/account_details_form_view.dart';
import 'package:mindshaper/src/module/shared/base/base_view.dart';
import 'package:mindshaper/src/module/shared/widgets/primary_outlined_button.dart';
import 'package:mindshaper/src/module/shared/widgets/ripple.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EditProfileView extends BaseView<EditProfileController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: AppValues.gapSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Image
                  SizedBox(height: AppValues.gap,),
                  _buildProfileImage(context),
                  SizedBox(height: AppValues.gap,),
                  //General Info
                  AccountDetailsFormView(),
                ],
              ),
            ),
          ),
        ),
        MediaQuery
            .of(context)
            .viewInsets
            .bottom >
            0 // hide save button when keyboard opens
            ? SizedBox()
            : Padding(
          padding: const EdgeInsets.all(AppValues.gap),
          child: PrimaryOutlinedButton(
            width: double.infinity,
            height: AppValues.container_40,
            buttonStyle: kPrimaryButtonStyle,
            onPressed: (){},
            child: Text(
              appLocalization.save,
              style: kTextSMMedium.copyWith(color: AppColors.baseWhite),
            ),
          ),
        )
      ],
    );
  }


  Widget _buildProfileImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: AppValues.container_80,
          height: AppValues.container_80,
          decoration: BoxDecoration(
            color: AppColors.slate200,
            borderRadius: BorderRadius.circular(AppValues.radiusRounded,),
            border: Border.all(
              color: AppColors.slate200,
            ),
          ),
          child: Icon(PhosphorIcons.userCircle(),

            color: AppColors.slate500,
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   right: 0,
        //   child: Ripple(
        //     onTap: () {
        //       showModalBottomSheet(
        //         isDismissible: false,
        //         context: context,
        //         backgroundColor: AppColors.baseWhite,
        //         useSafeArea: true,
        //         isScrollControlled: true,
        //         elevation: AppValues.zero,
        //         builder: (context) {
        //           return Container(
        //             padding: EdgeInsets.all(AppValues.gap),
        //             width: double.infinity,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 Center(
        //                   child: Container(
        //                     width: 40,
        //                     height: 5,
        //                     decoration: BoxDecoration(
        //                       color: AppColors.primary,
        //                       borderRadius: BorderRadius.circular(10),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(height: AppValues.gapXSmall),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     SizedBox(
        //                       width: AppValues.container_40,
        //                       child: IconButton(
        //                         onPressed: () => Get.back(),
        //                         icon: Icon(Bootstrap.x_lg),
        //                       ),
        //                     ),
        //                     Text(
        //                       appLocalization.profilePhoto,
        //                       style: kSyne500W16S.copyWith(
        //                         color: AppColors.slate900,
        //                       ),
        //                     ),
        //                     SizedBox(width: AppValues.container_40),
        //                     // Balancing the alignment
        //                   ],
        //                 ),
        //                 SizedBox(height: AppValues.gap),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   children: [
        //                     //camera button
        //                     _imagePickerButton(
        //                       onTap: () {
        //                         controller.pickImage(ImageSource.camera);
        //                         Get.back();
        //                       },
        //                       icon: Bootstrap.camera,
        //                       title: appLocalization.camera,
        //                     ),
        //                     SizedBox(width: AppValues.gapXLarge),
        //                     //gallery button
        //                     _imagePickerButton(
        //                       onTap: () async {
        //                         bool permissionStatus = await controller
        //                             .permissionService
        //                             .getStoragePermission(); //check permission
        //                         if (permissionStatus) {
        //                           controller.pickImage(ImageSource.gallery);
        //                           Get.back();
        //                         }
        //                       },
        //                       icon: Bootstrap.image,
        //                       title: appLocalization.gallery,
        //                     ),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           );
        //         },
        //       );
        //     },
        //     child: Container(
        //       height: 32,
        //       width: 32,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(AppValues.radiusRounded),
        //         color: AppColors.primary,
        //       ),
        //       padding: EdgeInsets.all(AppValues.gapXSmall),
        //       child: Icon(
        //         Bootstrap.camera,
        //         size: AppValues.icon_16,
        //         color: AppColors.baseWhite,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  _imagePickerButton({
    required IconData icon,
    required VoidCallback onTap,
    required String title,
  }) {
    return Ripple(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(
              AppValues.gapXSmall,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppValues.radiusRounded,
              ),
              border: Border.all(
                color: AppColors.slate200,
              ),
            ),
            child: Icon(
              icon,
              size: AppValues.icon,
              color: AppColors.primary,
            ),
          ),
          Text(
            title,
            style: kSyne500W16S.copyWith(
              color: AppColors.slate600,
            ),
          )
        ],
      ),
    );
  }
}
