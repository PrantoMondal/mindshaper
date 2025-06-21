import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class CheckboxTile extends StatefulWidget {
  const CheckboxTile({super.key, required this.onChange, this.title, this.child})
    : assert(title != null || child != null, 'Either title or child must be provided.');

  final void Function(bool value) onChange;
  final String? title;
  final Widget? child;

  @override
  State<CheckboxTile> createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  bool isChecked = false;

  void changeState(bool? value) {
    if (value == null) return;

    setState(() {
      isChecked = value;
      widget.onChange(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: changeState,
          activeColor: AppColors.primary,
          side: BorderSide(color: AppColors.slate500),
        ),
        (widget.title != null)
            ? Text(widget.title!, style: kTextSMNormal.copyWith(color: AppColors.slate600))
            : Container(),
        (widget.child != null) ? widget.child! : Container(),
      ],
    );
  }
}
