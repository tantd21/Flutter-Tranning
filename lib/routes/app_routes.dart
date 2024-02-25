import 'package:flutter/material.dart';
import 'package:thi_don_s_application1/presentation/android_one_screen/android_one_screen.dart';
import 'package:thi_don_s_application1/presentation/create_an_account_screen/create_an_account_screen.dart';
import 'package:thi_don_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidOneScreen = '/android_one_screen';

  static const String createAnAccountScreen = '/create_an_account_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidOneScreen: (context) => AndroidOneScreen(),
    createAnAccountScreen: (context) => CreateAnAccountScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
