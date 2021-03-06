import 'package:apt_delievery/widgets/meal_card.dart';
import 'package:flutter/material.dart';

class Meals extends StatefulWidget {
  @override
  _MealsState createState() => _MealsState();
}

class _MealsState extends State<Meals> {
  List meals = [
    MealCard(id: 1, name: "БигМак", title: "Очень вкусно", imgPath: "assets/images/BigMac.jpg", cost: 130,),
    MealCard(id: 2, name: "Чизбургер", title: "Состав: ... ", imgPath: "assets/images/cheeseburger.png", cost: 49,),
  ];
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index){
              return meals[index];
            }),
      ),
    );
  }
}

