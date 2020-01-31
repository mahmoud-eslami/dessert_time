import 'package:dessert_time/model/dessert.dart';
import 'package:flutter/material.dart';

class ShopDetailsPage extends StatelessWidget {
  final Shop shop;

  const ShopDetailsPage({Key key, @required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
    );
  }
}
