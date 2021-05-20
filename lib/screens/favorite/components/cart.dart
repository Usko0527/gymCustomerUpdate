import 'package:flutter/material.dart';
import 'package:gym_customer_update/models/Product.dart';


class CartFavorite {
  final Product product;
  final int numOfItem;

  CartFavorite({@required this.product, @required this.numOfItem});
}

// Demo data for our cart

List<CartFavorite> demoCarts = [
  CartFavorite(product: demoProducts[0], numOfItem: 2),
  CartFavorite(product: demoProducts[1], numOfItem: 1),
  CartFavorite(product: demoProducts[2], numOfItem: 1),
];