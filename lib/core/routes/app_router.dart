import 'package:event_app_c17_mon_7pm/core/routes/pages_route_name.dart';
import 'package:event_app_c17_mon_7pm/modules/authentication/forget_password/forget_password_view.dart';
import 'package:event_app_c17_mon_7pm/modules/authentication/sign_in/sign_in_view.dart';
import 'package:event_app_c17_mon_7pm/modules/authentication/sign_up/sign_up_view.dart';
import 'package:event_app_c17_mon_7pm/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PagesRouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
          settings: settings,
        );

      case PagesRouteName.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpView(),
          settings: settings,
        );

      case PagesRouteName.forgetPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
