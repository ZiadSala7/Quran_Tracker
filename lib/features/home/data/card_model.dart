import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';
import '../../azkar/views/azkar_view.dart';
import '../../counter/views/counter_view.dart';
import '../../quran_tracker/views/quran_tracker_view.dart';

class CardModel {
  final String text, image;
  final Function(BuildContext context) onPressed;

  CardModel({required this.text, required this.image, required this.onPressed});
}

List<CardModel> models(BuildContext context) {
  return [
    CardModel(
      text: 'المسبحة',
      image: AppAssets.assetsCnt,
      onPressed: (context) {
        Navigator.of(context).pushNamed(CounterView.id);
      },
    ),
    CardModel(
      text: 'متابعة الحفظ',
      image: AppAssets.assetsQuran,
      onPressed: (context) {
        Navigator.of(context).pushNamed(QuranTrackerView.id);
      },
    ),
    CardModel(
      text: 'الأذكار',
      image: AppAssets.assetsAzkar,
      onPressed: (context) {
        Navigator.of(context).pushNamed(AzkarView.id);
      },
    ),
    CardModel(
      text: 'المكتبة',
      image: AppAssets.assetsMyLib,
      onPressed: (context) {
        // Navigator.of(context).pushNamed(AzkarView.id);
      },
    ),
  ];
}
