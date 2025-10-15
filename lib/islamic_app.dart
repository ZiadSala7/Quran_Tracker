import 'package:flutter/material.dart';

import 'core/utils/app_routes.dart';
import 'features/splash/views/splash_view.dart';

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar'),
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Haramatton',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashView(),
    );
  }
}
