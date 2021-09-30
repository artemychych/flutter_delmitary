import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Restaurants extends StatelessWidget {
  List<Widget> shops = [
    RestaurantCard(name: 'McDonalds', imgUrl: 'assets/images/mclogo.jpg'),
    RestaurantCard(name: 'Пятёрочка', imgUrl: 'assets/images/logo_5ka.png')
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                'Рестораны',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return shops[index];
              }),
        ),
      ]),
    );
  }
}
