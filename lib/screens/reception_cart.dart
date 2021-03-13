import 'dart:convert';

import 'package:apt_delievery/reception.dart';
import 'package:apt_delievery/widgets/cart_item.dart';
import 'package:flutter/cupertino.dart';
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
            itemCount: cartList.length,
            itemBuilder: (context, index) {
              return cartList[index];
            }),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showMyDialog,
        label: Text('Сделать заказ'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Ваш заказ \n был успешно оформлен',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Ожидайте принятия заказа'),
                Text('Курьеры в ближайшее время примут ваш заказ'),
                Text('Если ваш заказ долгое время никто не принимает, то вы можете отменить заказ'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('На главную'),
              onPressed: () {

                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) => new Reception(0)));
              },
            ),
          ],
        );
      },
    );
  }
}