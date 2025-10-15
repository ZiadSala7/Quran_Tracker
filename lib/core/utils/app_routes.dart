import 'package:flutter/material.dart';
import '../../features/azkar/views/azkar_view.dart';
import '../../features/counter/views/counter_view.dart';
import '../../features/home/views/home_view.dart';
import '../../features/quran_tracker/views/quran_tracker_view.dart';
import '../../features/splash/views/splash_view.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    SplashView.id: (context) => const SplashView(),
    HomeView.id: (context) => const HomeView(),
    QuranTrackerView.id: (context) => const QuranTrackerView(),
    CounterView.id: (context) => const CounterView(),
    AzkarView.id: (context) => const AzkarView(),
  };
}
