import 'package:flutter/material.dart';
import 'package:quran_tracker/main.dart';

class QuranTrackerApp extends StatelessWidget {
  const QuranTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuranTrackerPage(),
    );
  }
}
