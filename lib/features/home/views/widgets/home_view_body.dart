import 'package:flutter/material.dart';
import '../../data/card_model.dart';
import 'home_view_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<CardModel> cardModels = models(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: GridView.builder(
        itemCount: cardModels.length,
        itemBuilder: (BuildContext context, int index) {
          return HomeViewCard(model: cardModels[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
