import 'package:flutter/widgets.dart';
import 'package:qltt_danthanh/page/dashboard/dashboard_screen.dart';
import 'package:qltt_danthanh/page/home/home_page.dart';
import 'package:qltt_danthanh/page/login_success_screen/login_success_screen.dart';
import 'package:qltt_danthanh/page/sign_in/sign_in_screen.dart';
import 'package:qltt_danthanh/page/splash/splash_screen.dart';
import 'package:qltt_danthanh/page/forgot_password/forgot_password_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen(),
};