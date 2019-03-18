import 'package:flutter/material.dart';
import 'package:flutter_research/src/models/product.dart';
import 'package:flutter_research/src/stateless_widget/shopping_list_item.dart';

class ShoppingApp extends StatefulWidget {
  final List<Product> products;

  ShoppingApp(this.products);

  @override
  _ShoppingAppState createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  Set<Product> _productList = Set<Product>();

  void _onCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart) {
        _productList.add(product);
      } else {
        _productList.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Shopping list')),
        body: ListView(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            children: widget.products.map((product) {
              return ShoppingListItem(
                product: product,
                inCart: _productList.contains(product),
                onCartChanged: _onCartChanged,
              );
            }).toList()));
  }
}
