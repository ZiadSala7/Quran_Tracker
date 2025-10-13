import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  static const String id = 'HomeView';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(color: Colors.white)),
      body: HomeViewBody(),
    );
  }
}
