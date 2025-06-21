import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget with BaseWidgetMixin {
  SearchButton({
    super.key,
    this.iconColor = AppColors.baseWhite,
    this.iconSize = AppValues.icon,
    required this.controller,
  });

  final Color iconColor;
  final double iconSize;
  final SearchController controller;

  @override
  Widget body(BuildContext context) {
    return SearchAnchor(
      searchController: controller,
      builder: (context, controller) {
        return IconButton(
          icon: Icon(Icons.search, color: iconColor, size: iconSize),
          onPressed: () {
            controller.openView();
          },
        );
      },
      suggestionsBuilder: (context, controller) {
        return [Placeholder()];
      },
    );
  }
}
