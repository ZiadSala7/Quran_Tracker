import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'widgets/counter_view_body.dart';

class CounterView extends StatefulWidget {
  static const String id = 'CounterView';
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  late Box<int> counterBox;

  @override
  void initState() {
    super.initState();
    counterBox = Hive.box<int>('counterBox');
  }

  void incrementCounter() {
    int current = counterBox.get('count', defaultValue: 0)!;
    counterBox.put('count', current + 1);
    setState(() {});
  }

  void resetCounter() {
    counterBox.put('count', 0);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int counter = counterBox.get('count', defaultValue: 0)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('المسبحة'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: CounterViewBody(
        counter: counter,
        cntIncrement: incrementCounter,
        resetCnt: resetCounter,
      ),
    );
  }
}
