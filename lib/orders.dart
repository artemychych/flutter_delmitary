import 'dart:convert';

import 'package:apt_delievery/widgets/cart_item.dart';
import 'package:apt_delievery/widgets/meal_card.dart';
import 'package:apt_delievery/widgets/order.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Order(name: 'Артем', restaurant: 'McDonalds', room: 916,);
          }),
    );
  }
}

