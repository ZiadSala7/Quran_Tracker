import 'package:flutter/material.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widgets/azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  static const String id = 'AzkarView';
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('الأذكار', false),
      body: AzkarViewBody(),
    );
  }
}
