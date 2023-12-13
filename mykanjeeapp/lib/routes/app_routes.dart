import 'package:flutter/material.dart';
import 'package:mykanjeeapp/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:mykanjeeapp/presentation/container_screen/container_screen.dart';
import 'package:mykanjeeapp/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:mykanjeeapp/presentation/signupotp_screen/signupotp_screen.dart';
import 'package:mykanjeeapp/presentation/loginone_screen/loginone_screen.dart';
import 'package:mykanjeeapp/presentation/logintwo_screen/logintwo_screen.dart';
import 'package:mykanjeeapp/presentation/loginwithnumber_screen/loginwithnumber_screen.dart';
import 'package:mykanjeeapp/presentation/loginotp_screen/loginotp_screen.dart';
import 'package:mykanjeeapp/presentation/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:mykanjeeapp/presentation/forgetpasswordotp_screen/forgetpasswordotp_screen.dart';
import 'package:mykanjeeapp/presentation/resetpassword_screen/resetpassword_screen.dart';
import 'package:mykanjeeapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String containerScreen = '/container_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String signupotpScreen = '/signupotp_screen';

  static const String loginoneScreen = '/loginone_screen';

  static const String logintwoScreen = '/logintwo_screen';

  static const String loginwithnumberScreen = '/loginwithnumber_screen';

  static const String loginotpScreen = '/loginotp_screen';

  static const String forgotpasswordScreen = '/forgotpassword_screen';

  static const String forgetpasswordotpScreen = '/forgetpasswordotp_screen';

  static const String resetpasswordScreen = '/resetpassword_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpOneScreen: (context) => SignUpOneScreen(),
    containerScreen: (context) => ContainerScreen(),
    signUpTwoScreen: (context) => SignUpTwoScreen(),
    signupotpScreen: (context) => SignupotpScreen(),
    loginoneScreen: (context) => LoginoneScreen(),
    logintwoScreen: (context) => LogintwoScreen(),
    loginwithnumberScreen: (context) => LoginwithnumberScreen(),
    loginotpScreen: (context) => LoginotpScreen(),
    forgotpasswordScreen: (context) => ForgotpasswordScreen(),
    forgetpasswordotpScreen: (context) => ForgetpasswordotpScreen(),
    resetpasswordScreen: (context) => ResetpasswordScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
