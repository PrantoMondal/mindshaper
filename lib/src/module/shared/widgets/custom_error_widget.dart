import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget with BaseWidgetMixin {
  CustomErrorWidget({super.key, this.message, this.onTryAgain});

  final String? message;
  final Function()? onTryAgain;

  @override
  Widget body(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Placeholder image
          Icon(Icons.error_outlined, size: AppValues.icon_76, color: AppColors.red600),
          SizedBox(height: AppValues.gap),

          // Message
          Text(
            message ?? "Unexpected error occurred!",
            // style: kPlaceholderText,
            textAlign: TextAlign.center,
          ),

          // Try again button
          (onTryAgain == null)
              ? Container()
              : ElevatedButton(
                // style: kErrorButtonStyle,
                onPressed: onTryAgain,
                child: Text(
                  "Try again",
                  // style: kTextMDMedium,
                ),
              ),
        ],
      ),
    );
  }
}
