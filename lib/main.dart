import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'quran_tracker_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('quranBox');

  runApp(const QuranTrackerApp());
}