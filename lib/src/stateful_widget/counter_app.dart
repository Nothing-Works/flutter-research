import 'package:flutter/material.dart';
import 'package:flutter_research/src/stateless_widget/counter_add.dart';
import 'package:flutter_research/src/stateless_widget/counter_text.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _onPressed() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Research'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[CounterText(_counter), CounterAdd(_onPressed)],
        ),
      ),
    );
  }
}
