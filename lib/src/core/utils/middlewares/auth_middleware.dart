// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kefas_user/src/core/routes/app_pages.dart';
// import 'package:kefas_user/src/data/services/auth_service.dart';
//
// class AuthMiddleware extends GetMiddleware {
//   @override
//   RouteSettings? redirect(String? route) {
//     final authService = AuthService.to;
//
//     final isLoggedIn = authService.accessToken.isNotEmpty;
//
//     if (isLoggedIn) {
//       return RouteSettings(
//         name: Routes.HOME,
//       );
//     }
//     return null;
//   }
// }
