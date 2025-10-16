import 'package:flutter/material.dart';
import '../../../core/widgets/custom_appbar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('اختر ما يناسبك', true),
      body: HomeViewBody(),
    );
  }
}
