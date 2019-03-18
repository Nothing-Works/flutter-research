import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Research'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('$counter'),
            RaisedButton(
              onPressed: _onPressed,
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    setState(() {
      counter++;
    });
  }
}
