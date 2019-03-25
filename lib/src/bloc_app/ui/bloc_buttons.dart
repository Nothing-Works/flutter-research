import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';

class BlocButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<CounterBlocBloc>(context);

    return Column(
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
    );
  }
}
