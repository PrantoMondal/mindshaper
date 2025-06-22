import 'package:mindshaper/src/dashboard/binding/dashoard_binding.dart';
import 'package:mindshaper/src/dashboard/view/dashboard_view.dart';
import 'package:mindshaper/src/module/auth/bindings/forgot_pass_binding.dart';
import 'package:mindshaper/src/module/auth/bindings/registration_binding.dart';
import 'package:mindshaper/src/module/auth/bindings/reset_pass_binding.dart';
import 'package:mindshaper/src/module/auth/bindings/sign_in_binding.dart';
import 'package:mindshaper/src/module/auth/bindings/otp_verification_binding.dart';
import 'package:mindshaper/src/module/auth/views/forgot_pass_view.dart';
import 'package:mindshaper/src/module/auth/views/registration_view.dart';
import 'package:mindshaper/src/module/auth/views/reset_pass_view.dart';
import 'package:mindshaper/src/module/auth/views/sign_in_view.dart';
import 'package:mindshaper/src/module/auth/views/otp_verification_view.dart';

import 'package:mindshaper/src/module/home/bindings/home_binding.dart';
import 'package:mindshaper/src/module/home/views/home_view.dart';
import 'package:mindshaper/src/module/profile/bindings/edit_profile_binding.dart';
import 'package:mindshaper/src/module/profile/bindings/profile_binding.dart';
import 'package:mindshaper/src/module/profile/views/edit_profile_view.dart';
import 'package:mindshaper/src/module/profile/views/profile_view.dart';
import 'package:mindshaper/src/module/splash/bindings/splash_binding.dart';
import 'package:mindshaper/src/module/splash/views/splash_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.SPLASH,
      binding: SplashBinding(),
      page: () {
        return SplashView();
      },
    ),
    GetPage(
      name: Routes.SIGNIN,
      binding: SignInBinding(),
      page: () {
        return SignInView();
      },
    ),
    GetPage(
      name: Routes.FORGOT_PASSWORD,
      binding: ForgotPassBinding(),
      page: () {
        return ForgotPassView();
      },
    ),
    GetPage(
      name: Routes.RESET_PASSWORD,
      binding: ResetPassBinding(),
      page: () {
        return ResetPassView();
      },
    ),
    GetPage(
      name: Routes.REGISTRATION,
      binding: RegistrationBinding(),
      page: () {
        return RegistrationView();
      },
    ),
    GetPage(
      name: Routes.VERIFICATION,
      binding: OTPVerificationBinding(),
      page: () {
        return OTPVerificationView();
      },
    ),
    GetPage(
      name: Routes.DASHBOARD,
      binding: DashboardBindings(),
      page: () {
        return DashboardView();
      },
    ),
    GetPage(
      name: Routes.HOME,
      binding: HomeBinding(),
      page: () {
        return HomeView();
      },
    ),
    GetPage(
      name: Routes.PROFILE,
      binding: ProfileBinding(),
      page: () {
        return ProfileView();
      },
    ),

    GetPage(
      name: Routes.EDIT_PROFILE,
      binding: EditProfileBinding(),
      page: () {
        return EditProfileView();
      },
    ),
  ];
}
