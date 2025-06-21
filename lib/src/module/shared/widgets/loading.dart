import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.slate900.withOpacity(0.55),
          borderRadius: BorderRadius.circular(AppValues.radiusSmall),
        ),
        padding: const EdgeInsets.all(AppValues.gap),
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }
}
