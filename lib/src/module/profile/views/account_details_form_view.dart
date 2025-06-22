import 'package:flutter/material.dart';
import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/auth/widgets/input_label.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:mindshaper/src/module/shared/widgets/text_input_field.dart';


class AccountDetailsFormView extends StatelessWidget with BaseWidgetMixin {
  AccountDetailsFormView({
    super.key,

  });



  @override
  Widget body(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appLocalization.generalInfo,
            style: kSyne500W16S.copyWith(
              color: AppColors.slate600,
            ),
          ),
          SizedBox(
            height: AppValues.gap,
          ),
          InputLabel(title: appLocalization.fullName),
          RoundedTextInputField(
            initialValue: "John Doe",
            hintText: appLocalization.fullName,
            onChange: (value) {

            },
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: AppValues.gap,
          ),
          InputLabel(title: appLocalization.email),
          RoundedTextInputField(
            initialValue: "user@gmail.com",
            enabled: false,
            hintText: appLocalization.email,
            onChange: (value) {},
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: AppValues.gap,
          ),
          InputLabel(title: appLocalization.phone),
          RoundedTextInputField(
            initialValue: "+880 1234567890",
            hintText: appLocalization.phone,
            onChange: (value) {

            },
            keyboardType: TextInputType.phone,
          ),
          SizedBox(
            height: AppValues.gap,
          ),
          InputLabel(title: appLocalization.address),
          RoundedTextInputField(
            initialValue: "Dhaka, Bangladesh",
            radius: AppValues.radiusLarge,
            maxLine: 4,
            hintText: appLocalization.address,
            onChange: (value) {

            },
            keyboardType: TextInputType.streetAddress,
          ),
        ],
      ),
    );
  }
}
