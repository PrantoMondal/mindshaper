import 'package:mindshaper/l10n/app_localizations.dart';import 'package:mindshaper/l10n/l10n.dart';
import 'package:mindshaper/src/core/config/build_config.dart';
import 'package:mindshaper/src/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'bindings/initial_binding.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    final config = BuildConfig.instance.envConfig;

    return GetMaterialApp(
      title: config.appName,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: InitialBinding(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: L10n.locals,
      locale: Get.locale,
      debugShowCheckedModeBanner: false,
    );
  }
}
