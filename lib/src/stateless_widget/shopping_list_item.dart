import 'package:flutter/material.dart';
import 'package:flutter_research/src/models/product.dart';
import 'package:flutter_research/src/types/function_types.dart';

class ShoppingListItem extends StatelessWidget {
  final bool inCart;
  final Product product;
  final CartChangedCallback onCartChanged;

  ShoppingListItem({this.inCart, this.product, this.onCartChanged});

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return TextStyle(
        decoration: TextDecoration.lineThrough, color: Colors.black54);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => onCartChanged(product, inCart),
        leading: CircleAvatar(
          backgroundColor: _getColor(context),
          child: Text(product.name[0]),
        ),
        title: Text(product.name, style: _getTextStyle(context)));
  }
}
