import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomFormField<T> extends StatefulWidget {
  CustomFormField({super.key, required this.child, required this.validation, this.initialValue});

  final Widget Function(FormFieldState<T> field) child;
  final String? Function(T? value)? validation;
  final T? initialValue;

  @override
  State<CustomFormField<T>> createState() => _CustomFormFieldState<T>();
}

class _CustomFormFieldState<T> extends State<CustomFormField<T>> {
  final appLocalization = AppLocalizations.of(Get.context!)!;

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      enabled: true,
      validator: widget.validation,
      initialValue: widget.initialValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.child(field),
            (field.hasError) ? Text(field.errorText ?? appLocalization.unknownError, style: kError) : Container(),
          ],
        );
      },
    );
  }
}
