import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_research/src/bloc_app/ui/material_app.dart';

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
    return BlocProvider(bloc: _bloc, child: MaterialAppBloc());
  }
}
