import 'package:apt_delievery/reception.dart';
import 'package:apt_delievery/widgets/meal_card.dart';
import 'package:apt_delievery/widgets/meals.dart';
import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

import 'cartScreen.dart';

class Positions extends StatelessWidget {
  List<Widget> meals = [
    MealCard(
      id: 1,
      name: "БигМак",
      title: "Очень вкусно",
      imgPath: 'assets/images/BigMac.jpg',
      cost: 130,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alp Delivery'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Меню',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return meals[index];
                }),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => new Reception(3))),
        label: Text('В корзину'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
