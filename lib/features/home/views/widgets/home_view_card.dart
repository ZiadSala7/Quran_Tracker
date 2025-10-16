import 'package:flutter/material.dart';
import 'package:quran_tracker/core/utils/app_colors.dart';
import '../../data/card_model.dart';

class HomeViewCard extends StatelessWidget {
  final CardModel model;
  const HomeViewCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        model.onPressed(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          color: AppColors.grey,
        ),
        child: Column(
          children: [
            Flexible(child: Image.asset(model.image)),
            Text(
              model.text,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
