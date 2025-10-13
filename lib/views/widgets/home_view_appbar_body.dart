import 'package:flutter/material.dart';

class HomeViewAppBarBody extends StatelessWidget {
  const HomeViewAppBarBody({
    super.key,
    required this.completed,
    required this.surahNames,
    required this.percent,
  });

  final int completed;
  final List<String> surahNames;
  final double percent;

  @override
  Widget build(BuildContext context) {
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
  }
}
