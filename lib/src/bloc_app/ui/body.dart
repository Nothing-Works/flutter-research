import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc.dart';

class BodyBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bloc = BlocProvider.of<CounterBlocBloc>(context);

    return Center(
        child: BlocBuilder(
            bloc: _bloc,
            builder: (BuildContext context, CounterBlocState state) {
              return Text('${(state as InitialCounterBlocState).counter}');
            }));
  }
}
