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
    return Column(
      children: [
        Opacity(
          opacity: 0.9,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo[300]),
              color: Colors.deepPurple[900],
            ),
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Text(
                'Заказы',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 540,
          child: Column(
            children: [
              Order(
                name: 'Александр Павлов',
                restaurant: 'McDonalds',
                room: 511,
                urgency: "Срочно",
              ),
              Order(
                name: 'Дмитрий Иванов',
                restaurant: 'Пятёрочка',
                room: 319,
                urgency: "К 15:00",
              ),
              Order(
                name: 'Илон Маск',
                restaurant: 'Кебаб Дружба',
                room: 661,
                urgency: "К 10:00",
              ),
              Order(
                name: 'Билл Гейтс',
                restaurant: 'Пятёрочка',
                room: 808,
                urgency: "Срочно",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
