import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/bloc.dart';

class BlocApp extends StatefulWidget {
  @override
  _BlocAppState createState() => _BlocAppState();
}

class _BlocAppState extends State<BlocApp> {
  final _bloc = CounterBlocBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bloc'),
        ),
        body: Center(
            child: BlocBuilder(
                bloc: _bloc,
                builder: (BuildContext context, CounterBlocState state) {
                  return Text('${(state as InitialCounterBlocState).counter}');
                })),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                _bloc.dispatch(Increment());
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                _bloc.dispatch(Decrement());
              },
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
