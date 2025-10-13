import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('quranBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuranTrackerPage(),
    );
  }
}

class QuranTrackerPage extends StatefulWidget {
  const QuranTrackerPage({super.key});

  @override
  State<QuranTrackerPage> createState() => _QuranTrackerPageState();
}

class _QuranTrackerPageState extends State<QuranTrackerPage> {
  final List<String> surahNames = [
    "الفاتحة",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النور",
    "الفرقان",
    "الشعراء",
    "النمل",
    "القصص",
    "العنكبوت",
    "الروم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصلت",
    "الشورى",
    "الزخرف",
    "الدخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزمل",
    "المدثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الانفطار",
    "المطففين",
    "الانشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس",
  ];

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
