import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quran_tracker/constants.dart';

import 'quran_tracker_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('quranBox');

  runApp(const QuranTrackerApp());
}

class QuranTrackerPage extends StatefulWidget {
  const QuranTrackerPage({super.key});

  @override
  State<QuranTrackerPage> createState() => _QuranTrackerPageState();
}

class _QuranTrackerPageState extends State<QuranTrackerPage> {
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
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: box.listenable(),
          builder: (context, value, child) {
            int completed = getCompletedCount();
            double percent = getProgress();

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'مسار الحافظ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'تم حفظ $completed / ${surahNames.length} (${(percent * 100).toStringAsFixed(1)}%)',
                  style: const TextStyle(fontSize: 14, color: Colors.white70),
                ),
                const SizedBox(height: 6),
                // 🔹 شريط التقدم الأخضر
                LinearProgressIndicator(
                  value: percent,
                  color: Colors.lightGreenAccent,
                  backgroundColor: Colors.white24,
                  minHeight: 5,
                  borderRadius: BorderRadius.circular(8),
                ),
              ],
            );
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.green.shade700,
        toolbarHeight: 90,
      ),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: surahNames.length,
            itemBuilder: (context, index) {
              bool isChecked = box.get(index.toString(), defaultValue: false);
              return CheckboxListTile(
                title: Text(
                  surahNames[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: isChecked,
                onChanged: (value) {
                  box.put(index.toString(), value);
                },
                activeColor: Colors.green,
              );
            },
          );
        },
      ),
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
}
