import 'package:flutter/material.dart';
import 'package:flutter_research/src/bloc_app/ui/app_bar.dart';
import 'package:flutter_research/src/bloc_app/ui/bloc_buttons.dart';
import 'package:flutter_research/src/bloc_app/ui/body.dart';

class MaterialAppBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: BlocAppBar(),
      body: BodyBloc(),
      floatingActionButton: BlocButtons(),
    ));
  }
}
