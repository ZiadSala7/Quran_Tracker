import 'package:flutter/material.dart';
import '../../../core/widgets/custom_appbar.dart';

import 'widgets/display_azkar_card.dart';

class AzkarDisplayView extends StatelessWidget {
  final List<String> azkarList;
  final String appBarTitle;
  static const String id = 'DisplayAzkar';
  const AzkarDisplayView({
    super.key,
    required this.azkarList,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(appBarTitle, false),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: GridView.builder(
            itemCount: azkarList.length,
            itemBuilder: (BuildContext context, int index) {
              return DisplayAzkarCard(text: azkarList[index]);
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1,
            ),
          ),
        ),
      ),
    );
  }
}
