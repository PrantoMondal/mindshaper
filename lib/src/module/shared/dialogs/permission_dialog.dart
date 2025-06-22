// import 'package:mindshaper/l10n/app_localizations.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kefas_user/src/core/constants/app_colors.dart';
// import 'package:kefas_user/src/core/constants/app_textstyles.dart';
// import 'package:kefas_user/src/module/event/widgets/share_event.dart';
//
// Future showLocationDialog() async {
//   return await showAdaptiveDialog(
//     context: Get.context!,
//     builder: (context) {
//       return AlertDialog(
//         title: Text(
//           appLocalization.locationPermissionNeeded,
//           style: kSyne500W16S.copyWith(
//             color: AppColors.slate900,
//           ),
//         ),
//         content: Text(
//           AppLocalizations.of(Get.context!)!.turnOnLocationAccess,
//           style: kSyne500W14S.copyWith(
//             color: AppColors.slate600,
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Get.back();
//             },
//             child: Text(
//               AppLocalizations.of(Get.context!)!.ok,
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }
