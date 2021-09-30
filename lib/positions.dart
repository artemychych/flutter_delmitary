import 'package:apt_delievery/reception.dart';
import 'package:apt_delievery/widgets/meal_card.dart';
import 'package:apt_delievery/widgets/meals.dart';
import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

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
    MealCard(
      id: 2,
      name: "Чизбургер",
      title: "Состав: ...",
      imgPath: 'assets/images/cheeseburger.png',
      cost: 49,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: GradientAppBar(
        title: Text('Delmitary'),
        gradient: LinearGradient(
          colors: [
            Colors.cyan,
            Colors.indigo,
          ],
        ),
      ),
      body: Container(

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
                  'Меню',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
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
