part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;
  static const SIGNIN = _Paths.SIGNIN;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const RESET_PASSWORD = _Paths.RESET_PASSWORD;
  static const REGISTRATION = _Paths.REGISTRATION;
  static const VERIFICATION = _Paths.VERIFICATION;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const HOME = _Paths.HOME;
  static const PROFILE = _Paths.PROFILE;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE;
}

abstract class _Paths {
  static const SPLASH = "/splash";
  static const SIGNIN = "/sign_in";
  static const FORGOT_PASSWORD = "/forgot_password";
  static const RESET_PASSWORD = "/reset_password";
  static const REGISTRATION = "/registration";
  static const VERIFICATION = "/verification";
  static const DASHBOARD = "/dashboard";
  static const HOME = "/home";
  static const PROFILE = "/profile";
  static const EDIT_PROFILE = "/edit_profile";
}
