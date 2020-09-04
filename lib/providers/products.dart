import 'package:flutter/material.dart';
import 'package:shop/data/dummyData.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  List<Product> get items {
    return [..._items];
  }

  List<Product> get itemsFavorite {
    return _items.where((p) => p.isFavorite).toList();
  }

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

}
  // bool _showFavoriteOnly = false;

  // List<Product> get items {
  //   if (_showFavoriteOnly)
  //     return _items.where((element) => element.isFavorite).toList();
  //   return [..._items];
  // }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }
