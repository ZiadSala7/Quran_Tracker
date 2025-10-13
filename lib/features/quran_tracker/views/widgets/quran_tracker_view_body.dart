import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class QuranTrackerViewBody extends StatelessWidget {
  const QuranTrackerViewBody({
    super.key,
    required this.box,
    required this.surahNames,
  });

  final Box box;
  final List<String> surahNames;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
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
    );
  }
}
