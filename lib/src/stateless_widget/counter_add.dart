import 'package:flutter/material.dart';

class CounterAdd extends StatelessWidget {
  final VoidCallback onPressed;

  CounterAdd(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Add'),
    );
  }
}
