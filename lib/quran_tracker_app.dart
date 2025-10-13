import 'package:flutter/material.dart';

import 'views/home_view.dart';

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
