import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/utils/appRoutes.dart';
import 'package:shop/views/cartScreen.dart';
import 'package:shop/views/productDetail.dart';
import 'package:shop/views/productsOverview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductOverview(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetail(),
          AppRoutes.CART: (ctx) => CartScreen(),
         },
      ),
    );
  }
}
