import 'package:mindshaper/src/core/config/build_config.dart';

abstract class AppStrings {
  static final _config = BuildConfig.instance.envConfig;

  // Shared Preference key
  static final spAlreadyInstalled = "${_config.packageName}.app_already_installed";
  static final spAccessToken = "${_config.packageName}.user_access_token";
  static final spLocale = "${_config.packageName}.app_locale";

  static final spFCMToken = "${_config.packageName}.fcm_token";
  static final spLanguage = "${_config.packageName}.language";

  // Notification
  static final notificationChannelId = "${_config.packageName}.kefas_user_channel";
  static const notificationChannelName = "Kefas User Channel";
}
