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
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height / 2,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Image.asset(
                  AppAssets.assetsCnt,
                  height: MediaQuery.sizeOf(context).height / 2,
                ),
                Positioned(
                  top: constraints.maxWidth * 0.2,
                  left: constraints.maxWidth * 0.18,
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      fontSize: constraints.maxHeight * .16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: constraints.maxWidth * 0.15,
                  left: constraints.maxHeight * 0.28,
                  child: IconButton(
                    onPressed: cntIncrement,
                    icon: Icon(
                      Icons.add,
                      size: constraints.maxHeight * .2,
                      color: const Color.fromARGB(0, 255, 255, 255),
                    ),
                  ),
                ),
                Positioned(
                  bottom: constraints.maxWidth * 0.37,
                  right: constraints.maxHeight * 0.13,
                  child: IconButton(
                    onPressed: resetCnt,
                    icon: Icon(
                      color: const Color.fromARGB(0, 255, 255, 255),
                      Icons.refresh,
                      size: constraints.maxHeight * .09,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
