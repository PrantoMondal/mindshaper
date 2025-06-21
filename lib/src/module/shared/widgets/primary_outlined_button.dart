import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_themes.dart';
import 'package:flutter/material.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    Key? key,
    this.onPressed,
    this.title,
    this.child,
    this.width,
    this.height,
    this.buttonStyle,
  }) : assert(title != null || child != null, 'Either title or child must be provided.'),
       super(key: key);

  final VoidCallback? onPressed;
  final String? title;
  final Widget? child;
  final double? width;
  final double? height;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle ?? kOutlinedPrimaryButtonStyle,
        child:
            (title != null)
                ? Text(
                  title!,
                  style: kTextSMMedium.copyWith(color: AppColors.primary),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
                : child,
      ),
    );
  }
}
