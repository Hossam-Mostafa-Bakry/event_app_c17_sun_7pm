import 'package:event_app_c17_mon_7pm/core/routes/pages_route_name.dart';
import 'package:event_app_c17_mon_7pm/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeManager.getLightTheme(),
      darkTheme: ThemeManager.getDarkTheme(),
      initialRoute: PagesRouteName.splash,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
