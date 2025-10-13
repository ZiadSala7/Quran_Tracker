import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class QuranResetButton extends StatelessWidget {
  const QuranResetButton({
    super.key,
    required this.surahNames,
    required this.box,
  });

  final List<String> surahNames;
  final Box box;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.red.shade700,
      onPressed: () {
        // إعادة التعيين
        for (int i = 0; i < surahNames.length; i++) {
          box.put(i.toString(), false);
        }
      },
      tooltip: 'مسح جميع العلامات',
      child: Icon(Icons.refresh),
    );
  }
}
