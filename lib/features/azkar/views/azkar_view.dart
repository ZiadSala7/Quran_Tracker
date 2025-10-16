import 'package:flutter/material.dart';
import 'package:quran_tracker/core/widgets/custom_appbar.dart';

class AzkarView extends StatelessWidget {
  static const String id = 'AzkarView';
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar('الأذكار', false));
  }
}
