import 'package:flutter/material.dart' show BuildContext, GlobalKey, MaterialApp, ScaffoldMessengerState, StatelessWidget, Widget, WidgetsFlutterBinding, runApp;
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mest_payments_app',
          debugShowCheckedModeBanner: false,
          initialRoute: '/splash_screen',
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
