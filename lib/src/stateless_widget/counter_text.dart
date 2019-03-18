import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final int counter;

  const CounterText(this.counter);

  @override
  Widget build(BuildContext context) {
    return Text('$counter');
  }
}
