import 'package:mindshaper/l10n/app_localizations.dart';
import 'package:mindshaper/src/core/config/build_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseWidgetMixin on StatelessWidget {
  AppLocalizations get appLocalization => AppLocalizations.of(Get.context!)!;
  final logger = BuildConfig.instance.envConfig.logger;

  @override
  Widget build(BuildContext context) {
    return Container(child: body(context));
  }

  Widget body(BuildContext context);
}
