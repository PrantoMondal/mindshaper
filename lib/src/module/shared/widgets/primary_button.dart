import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_themes.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.onPressed, this.title, this.child, this.width, this.height})
    : assert(title != null || child != null, 'Either title or child must be provided.'),
      super(key: key);

  final VoidCallback? onPressed;
  final String? title;
  final Widget? child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: (onPressed == null) ? kInactiveButtonStyle : kPrimaryButtonStyle,
        child:
            (title != null)
                ? Text(
                  title!,
                  style: kTextSMMedium.copyWith(color: AppColors.baseWhite),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
                : child,
      ),
    );
  }
}
