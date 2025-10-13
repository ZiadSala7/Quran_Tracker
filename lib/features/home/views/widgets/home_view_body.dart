import 'package:flutter/material.dart';

import '../../../quran_tracker/views/quran_tracker_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: GridView.builder(
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(QuranTrackerView.id);
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
            ),
          );
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
