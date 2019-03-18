import 'package:flutter/material.dart';
import 'package:flutter_research/src/mocks/product_mock.dart';
import 'package:flutter_research/src/models/product.dart';
import 'package:flutter_research/src/stateful_widget/shopping_app.dart';

class App extends StatelessWidget {
  final List<Product> products = ProductMock.fetchAll();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Research',
      home: ShoppingApp(products),
    );
  }
}
