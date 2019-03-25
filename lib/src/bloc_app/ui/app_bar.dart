import 'package:flutter/material.dart';

class BlocAppBar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget bottom;

  const BlocAppBar({Key key, this.bottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Bloc'));
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0));
}
