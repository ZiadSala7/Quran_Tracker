import 'package:flutter/material.dart';
import 'package:quran_tracker/core/utils/app_assets.dart';
class CounterViewBody extends StatelessWidget {
  const CounterViewBody({
    super.key,
    required this.counter,
    required this.cntIncrement,
    required this.resetCnt,
  });

  final int counter;
  final Function() cntIncrement;
  final Function() resetCnt;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            AppAssets.assetsCnt,
            height: MediaQuery.sizeOf(context).height / 2,
          ),
          Positioned(
            top: 85,
            left: 100,
            child: Text(
              '$counter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 150,
            child: IconButton(
              onPressed: cntIncrement,
              icon: Icon(Icons.add, size: 50),
            ),
          ),
          Positioned(
            bottom: 173,
            right: 66,
            child: IconButton(
              onPressed: resetCnt,
              icon: Icon(Icons.refresh, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
