import 'package:flutter/material.dart';
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
        decoration: BoxDecoration(color: Colors.lightGreenAccent),
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
