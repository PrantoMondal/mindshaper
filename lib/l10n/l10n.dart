import 'dart:io';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:mindshaper/src/core/constants/app_strings.dart' show AppStrings;
import 'package:shared_preferences/shared_preferences.dart';

class L10n {
  static const locals = [
    Locale('en', 'US'), // Engleză
  ];

  static Locale selectedLocale = locals[0];

  static init() async {
    final temp = locals.firstWhereOrNull(
      (element) => Platform.localeName == "${element.languageCode}_${element.countryCode}",
    );

    final sp = await SharedPreferences.getInstance();
    final locale = await sp.getInt(AppStrings.spLocale);

    if (locale != null) {
      return;
    }

    if (temp == null) {
      await setLocale(selectedLocale);
    } else {
      await setLocale(temp);
      selectedLocale = temp;
    }
  }

  static Future getLocale() async {
    final sp = await SharedPreferences.getInstance();

    final locale = await sp.getInt(AppStrings.spLocale) ?? 0;

    selectedLocale = locals[locale];
    Get.updateLocale(locals[locale]);
  }

  static Future setLocale(Locale locale) async {
    final sp = await SharedPreferences.getInstance();

    final index = locals.indexOf(locale);
    final result = await sp.setInt(AppStrings.spLocale, index);

    if (result) {
      selectedLocale = locale;
      Get.updateLocale(locale);
    }
  }

  static String getLocalString(Locale locale) {
    final language = locale.languageCode;

    switch (language) {
      case "en":
        return "English";
      default:
        return "";
    }
  }
}
