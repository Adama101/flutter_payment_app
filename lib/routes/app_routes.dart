import 'package:flutter/material.dart';
import 'package:mest_payments_app/screens/splash_screen.dart';
import 'package:mest_payments_app/screens/sign_in_screen.dart';
import 'package:mest_payments_app/screens/sign_up_screen.dart';
import 'package:mest_payments_app/screens/statistics_tab_container_screen.dart';
import 'package:mest_payments_app/screens/settings_screen.dart';
import 'package:mest_payments_app/screens/profile_screen.dart';

class AppRoutes {
  static const String onboardingThreeScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String HomeScreen = '/home_screen';

  static const String statisticsPage = '/statistics_page';

  static const String statisticsTabContainerScreen =
      '/statistics_tab_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingThreeScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    statisticsTabContainerScreen: (context) => StatisticsTabContainerScreen(),
    settingsScreen: (context) => SettingsScreen(),
    profileScreen: (context) => ProfileScreen(),
  };
}
