import 'package:flutter_research/src/models/product.dart';

class ProductMock extends Product {
  static List<Product> fetchAll() {
    return [
      Product(name: 'Eggs'),
      Product(name: 'Flour'),
      Product(name: 'Chocolate chips'),
      Product(name: 'Rice'),
      Product(name: 'Fruit cake')
    ];
  }
}
