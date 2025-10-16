import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/azkar_model.dart';
import '../azkar_display_view.dart';

class AzkarViewCard extends StatelessWidget {
  final AzkarModel model;
  const AzkarViewCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AzkarDisplayView(
              azkarList: model.azkarList,
              appBarTitle: model.name,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(5),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.grey,
        ),
        child: Image.asset(model.logo, fit: BoxFit.fill),
      ),
    );
  }
}
