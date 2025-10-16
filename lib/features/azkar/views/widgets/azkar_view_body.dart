import 'package:flutter/material.dart';
import '../../data/azkar_model.dart';
import 'azkar_view_card.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: GridView.builder(
        itemCount: azkarModels.length,
        itemBuilder: (BuildContext context, int index) {
          return AzkarViewCard(model: azkarModels[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          childAspectRatio: 2.3,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
