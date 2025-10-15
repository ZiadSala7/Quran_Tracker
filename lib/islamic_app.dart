import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/utils/app_routes.dart';
import 'features/splash/views/splash_view.dart';

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        locale: Locale('ar'),
        routes: appRoutes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Haramatton',
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SplashView(),
      ),
    );
  }
}
