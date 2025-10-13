import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String id = 'SplashView';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(delay: Duration(seconds: 1), child: SplashViewBody()),
    );
  }
}
