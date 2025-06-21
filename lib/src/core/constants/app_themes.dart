import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

final kPrimaryButtonStyle = ButtonStyle(
  backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
  elevation: const WidgetStatePropertyAll(AppValues.elevationLvl0),
  overlayColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? AppColors.primaryDarker : null;
  }),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppValues.radiusSmall)),
  ),
);

final kSecondaryButtonStyle = ButtonStyle(
  backgroundColor: const WidgetStatePropertyAll(AppColors.slate900),
  elevation: const WidgetStatePropertyAll(AppValues.elevationLvl0),
  overlayColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? AppColors.slate600 : null;
  }),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppValues.radiusSmall)),
  ),
);

final kInactiveButtonStyle = ButtonStyle(
  backgroundColor: const WidgetStatePropertyAll(AppColors.slate400),
  elevation: const WidgetStatePropertyAll(AppValues.elevationLvl0),
  overlayColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? AppColors.slate400 : null;
  }),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppValues.radiusSmall)),
  ),
);

final kOutlinedPrimaryButtonStyle = ButtonStyle(
  backgroundColor: const WidgetStatePropertyAll(AppColors.baseWhite),
  elevation: const WidgetStatePropertyAll(AppValues.elevationLvl0),
  overlayColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? AppColors.slate100 : null;
  }),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppValues.radiusSmall),
      side: BorderSide(color: AppColors.primary),
    ),
  ),
);

final kOutlinedSecondaryButtonStyle = ButtonStyle(
  backgroundColor: const WidgetStatePropertyAll(AppColors.baseWhite),
  elevation: const WidgetStatePropertyAll(AppValues.elevationLvl0),
  overlayColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? AppColors.slate100 : null;
  }),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppValues.radiusSmall),
      side: BorderSide(color: AppColors.slate300),
    ),
  ),
);

final kEnabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  borderSide: BorderSide(color: AppColors.slate300, width: AppValues.dividerThickness_2),
);

final kDisabledBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  borderSide: BorderSide(color: AppColors.slate300, width: AppValues.dividerThickness_2),
);

final kErrorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  borderSide: BorderSide(color: AppColors.red600, width: AppValues.dividerThickness_2),
);

final kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  borderSide: BorderSide(color: AppColors.primaryDarker, width: AppValues.dividerThickness_2),
);

final defaultPinTheme = PinTheme(
  width: AppValues.container_50,
  height: AppValues.container_50,
  textStyle: text2xlSemiBold.copyWith(color: AppColors.slate900),
  decoration: BoxDecoration(
    border: Border.all(color: AppColors.slate400),
    borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(border: Border.all(color: AppColors.primary));

final searchBarShape = WidgetStatePropertyAll<OutlinedBorder>(
  RoundedRectangleBorder(
    side: BorderSide(color: AppColors.slate400),
    borderRadius: BorderRadius.circular(AppValues.radiusSmall), // Customize the border radius
  ),
);

// final dateBorder = InputDecoration(
//   hintStyle: kTextSMNormal.copyWith(
//     color: AppColors.slate400,
//   ),
//   contentPadding: EdgeInsets.symmetric(
//     horizontal: AppValues.gap,
//   ),
//   suffixIcon: Icon(
//     Bootstrap.calendar_event,
//     color: AppColors.slate900,
//     size: AppValues.icon_16,
//   ),
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(
//       AppValues.radiusSmall,
//     ),
//     borderSide: BorderSide(
//       color: AppColors.slate200,
//     ),
//   ),
// );

final cardBorder = BoxDecoration(
  color: AppColors.baseWhite,
  borderRadius: BorderRadius.circular(AppValues.radiusSmall),
  border: Border.all(color: AppColors.slate200, width: AppValues.dividerThickness_2),
);
