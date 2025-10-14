import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'islamic_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('quranBox');
  await Hive.openBox<int>('counterBox');
  runApp(const IslamicApp());
}
