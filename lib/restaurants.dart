

import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

class Restaurants extends StatelessWidget {
  List<Widget> shops = [
    RestaurantCard(name: 'McDonalds', imgUrl: 'assets/images/mclogo.jpg'),
    RestaurantCard(name: 'Пятёрочка', imgUrl: 'assets/images/logo_5ka.png')
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alp Delivery'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            'Рестораны',
            style: TextStyle( fontSize: 24),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){
                  return shops[index];
                }),
          ),
        ]),
      ),
    );
  }
}
