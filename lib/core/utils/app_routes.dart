import 'package:flutter/material.dart';
import '../../features/home/views/home_view.dart';
import '../../features/quran_tracker/views/quran_tracker_view.dart';
import '../../features/splash/views/splash_view.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    SplashView.id: (context) => const SplashView(),
    HomeView.id: (context) => const HomeView(),
    QuranTrackerView.id: (context) => const QuranTrackerView(),
  };
}
