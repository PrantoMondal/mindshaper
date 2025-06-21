import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_themes.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedTextInputField extends StatelessWidget with BaseWidgetMixin {
  RoundedTextInputField({
    super.key,
    required this.hintText,
    this.onChange,
    this.maxLine = 1,
    this.radius,
    this.isObscure = false,
    this.enabled = true,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.counter,
    this.maxLength,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
  }) : assert(controller != null || onChange != null, 'Either controller or onChange must be provided');

  final String hintText;
  final int? maxLine;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? counter;
  final int? maxLength;
  final double? radius;
  final String? initialValue;
  final bool isObscure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool enabled;
  final TextEditingController? controller;

  @override
  Widget body(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppValues.gapXSmall),
      child: TextFormField(
        controller: controller,
        enabled: enabled,
        obscureText: isObscure,
        maxLines: maxLine,
        maxLength: maxLength,
        textAlignVertical: TextAlignVertical.top,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.done,
        validator: validator,
        onChanged: onChange,
        inputFormatters: inputFormatters,
        initialValue: initialValue,
        style: kTextSMNormal,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(AppValues.gap),
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon ?? SizedBox(),
          prefixIconConstraints: prefixIcon == null ? BoxConstraints(minWidth: 20.0) : null,
          fillColor: AppColors.baseWhite,
          hintText: hintText,
          hintStyle: kTextSMNormal,
          counter: counter,
          alignLabelWithHint: true,
          enabled: enabled,
          enabledBorder: kEnabledBorder.copyWith(borderRadius: BorderRadius.circular(radius ?? AppValues.radiusSmall)),
          disabledBorder: kDisabledBorder.copyWith(
            borderRadius: BorderRadius.circular(radius ?? AppValues.radiusSmall),
          ),
          errorBorder: kErrorBorder.copyWith(borderRadius: BorderRadius.circular(radius ?? AppValues.radiusSmall)),
          focusedErrorBorder: kErrorBorder.copyWith(
            borderRadius: BorderRadius.circular(radius ?? AppValues.radiusSmall),
          ),
          focusedBorder: kFocusedBorder.copyWith(borderRadius: BorderRadius.circular(radius ?? AppValues.radiusSmall)),
        ),
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
