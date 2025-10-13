import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../constants.dart';
import 'widgets/quran_tracker_view_appbar_body.dart';
import 'widgets/quran_tracker_view_body.dart';

class QuranTrackerView extends StatefulWidget {
  static const String id = 'homeView';
  const QuranTrackerView({super.key});

  @override
  State<QuranTrackerView> createState() => _QuranTrackerViewState();
}

class _QuranTrackerViewState extends State<QuranTrackerView> {
  final List<String> surahNames = sNames;
  late Box box;

  @override
  void initState() {
    super.initState();
    box = Hive.box('quranBox');
  }

  int getCompletedCount() {
    int count = 0;
    for (int i = 0; i < surahNames.length; i++) {
      if (box.get(i.toString(), defaultValue: false)) {
        count++;
      }
    }
    return count;
  }

  double getProgress() {
    return getCompletedCount() / surahNames.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: quranTrackerViewAppBar(),
      body: QuranTrackerViewBody(box: box, surahNames: surahNames),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade700,
        onPressed: () {
          // إعادة التعيين
          for (int i = 0; i < surahNames.length; i++) {
            box.put(i.toString(), false);
          }
        },
        tooltip: 'مسح جميع العلامات',
        child: Icon(Icons.refresh),
      ),
    );
  }

  AppBar quranTrackerViewAppBar() {
    return AppBar(
      title: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) {
          int completed = getCompletedCount();
          double percent = getProgress();
          return HomeViewAppBarBody(
            completed: completed,
            surahNames: surahNames,
            percent: percent,
          );
        },
      ),
      centerTitle: true,
      backgroundColor: Colors.green.shade700,
      toolbarHeight: 90,
    );
  }
}
