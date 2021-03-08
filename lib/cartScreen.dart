import 'dart:convert';

import 'package:apt_delievery/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  SharedPreferences prefs;
  String cartString;
  Map<String, dynamic> cartItems;
  List<Widget> cartList = [];

  @override
  void initState() {
    futureBuilder();
    print('1');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (cartList == null) {
      return Text('loading...');
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Корзина'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return cartList[index];
            }),
      ),
    );
  }

  void futureBuilder() async {
    SharedPreferences.getInstance().then((prefs) {
      cartString = prefs.getString('cart') ?? '{}';

      setState(() {
        cartItems = jsonDecode(cartString);
        cartItems.forEach(
            (key, value) => cartList.add(CartItem(id: key, count: value)));
      });

      print(cartItems);
      print(cartList);
    });
  }
}
