import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/azkar_model.dart';
import '../azkar_display_view.dart';

class AzkarViewCard extends StatelessWidget {
  final AzkarModel model;
  const AzkarViewCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.azkarCard,
          padding: EdgeInsets.all(15),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AzkarDisplayView(
                azkarList: model.azkarList,
                appBarTitle: model.name,
              ),
            ),
          );
        },
        icon: Text(
          model.name,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        label: Image.asset(model.logo, height: 30),
      ),
    );
  }
}
