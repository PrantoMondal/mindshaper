import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:flutter/material.dart';

class Ripple extends StatelessWidget {
  final Function()? onTap;
  final Widget? child;
  final Color rippleColor;
  final double radius;

  const Ripple({
    Key? key,
    this.child,
    required this.onTap,
    this.rippleColor = AppColors.slate200,
    this.radius = AppValues.radius_12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        radius: radius,
        borderRadius: BorderRadius.circular(radius),
        highlightColor: rippleColor,
        splashColor: rippleColor,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
