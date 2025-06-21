import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget with BaseWidgetMixin {
  InputLabel({super.key, required this.title});

  final String title;

  @override
  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppValues.gap),
      child: Text(title, style: kTextSMMedium.copyWith(color: AppColors.slate900)),
    );
  }
}
