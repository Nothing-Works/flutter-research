import 'package:flutter/material.dart';
import 'package:flutter_research/src/stateful_widget/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Research',
      home: Home(),
    );
  }
}
