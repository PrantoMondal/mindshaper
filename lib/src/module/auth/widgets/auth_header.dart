import 'package:mindshaper/src/core/constants/app_colors.dart';
import 'package:mindshaper/src/core/constants/app_textstyles.dart';
import 'package:mindshaper/src/core/constants/app_values.dart';
import 'package:mindshaper/src/module/shared/base/base_widget_mixin.dart';
import 'package:mindshaper/src/module/shared/widgets/asset_image_view.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget with BaseWidgetMixin {
  final String screenTitle;
  final String screenSubTitle;
  AuthHeader({required this.screenTitle, required this.screenSubTitle, super.key});

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                AssetImageView(fileName: 'ms.png', width: AppValues.container_80, height: AppValues.container_80),
                SizedBox(height: AppValues.gapXSmall),
                AssetImageView(fileName: 'mindshaper.png',  height: AppValues.container_80),
                SizedBox(height: AppValues.gap),
                Align(alignment: Alignment.centerLeft, child: Text(screenTitle, style: text2xlSemiBold)),
                SizedBox(height: AppValues.gapXSmall),
                Align(alignment: Alignment.centerLeft, child: _buildSubTitleWithEmail(screenSubTitle)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubTitleWithEmail(String text) {
    final emailRegex = RegExp(r'\b[\w\.-]+@[\w\.-]+\.\w+\b');
    final matches = emailRegex.allMatches(text);

    if (matches.isEmpty) {
      return Text(text, style: kTextSMNormal);
    }

    List<InlineSpan> spans = [];
    int lastMatchEnd = 0;

    for (final match in matches) {
      // Add text before the email
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(text: text.substring(lastMatchEnd, match.start)));
      }

      // Add the email with custom color, but same font, size, weight
      spans.add(
        TextSpan(
          text: text.substring(match.start, match.end),
          style: kTextSMNormal.copyWith(color: AppColors.slate900),
        ),
      );

      lastMatchEnd = match.end;
    }

    // Add any remaining text after last match
    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd)));
    }

    return RichText(
      text: TextSpan(style: kTextSMNormal.copyWith(height: 1.5, fontSize: AppValues.fontSize_16), children: spans),
      textAlign: TextAlign.left,
    );
  }
}
