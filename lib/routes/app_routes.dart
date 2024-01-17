import 'package:flutter/material.dart';
import 'package:mest_payments_app/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:mest_payments_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:mest_payments_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:mest_payments_app/presentation/statistics_tab_container_screen/statistics_tab_container_screen.dart';
import 'package:mest_payments_app/presentation/settings_screen/settings_screen.dart';
import 'package:mest_payments_app/presentation/profile_screen/profile_screen.dart';
import 'package:mest_payments_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String statisticsPage = '/statistics_page';

  static const String statisticsTabContainerScreen =
      '/statistics_tab_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingThreeScreen: (context) => OnboardingThreeScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    statisticsTabContainerScreen: (context) => StatisticsTabContainerScreen(),
    settingsScreen: (context) => SettingsScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
