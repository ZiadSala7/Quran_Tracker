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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: List.generate(azkarList.length, (index) {
              return DisplayAzkarCard(text: azkarList[index]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
