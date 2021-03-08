import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../positions.dart';

class MealCard extends StatefulWidget {
  final int id;
  final String name;
  final String title;
  final String imgPath;
  final int cost;

  MealCard({
    @required this.id,
    @required this.name,
    @required this.title,
    @required this.imgPath,
    @required this.cost,
  });


  @override
  _MealCardState createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  int counter=0;

  Future<void> addToCart(id, count) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String cartString = prefs.getString('cart') ?? '{}';
    Map<String, dynamic> cart = jsonDecode(cartString);

    if(!cart.containsKey(id.toString())){
      cart[id.toString()] = 0;
    }

    print(cart[id.toString()]);

    if (cart[id.toString()] + count >= 0 ){
      cart[id.toString()] += count;

      setState(() {
        counter = cart[id.toString()];
      });


    }

    await prefs.setString('cart', json.encode(cart));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        width: double.infinity,
        height: 100,
        child: Row(
          children: [
            Container(
              child: Image.asset(widget.imgPath,
                width: 100,
                height: 100,
              ),
            ),
            Column(
              children: [
                Container(
                  child: Row(

                    children: [
                      Container(
                        child: Text(
                          widget.name,

                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.cost.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  children: [
                    FlatButton(onPressed: () => addToCart(widget.id, -1), child: CircleAvatar(child: Text(
                      '-'
                    ))),
                    Text(counter.toString()),
                    FlatButton(onPressed: () => addToCart(widget.id, 1), child: CircleAvatar(child: Text(
                        '+'
                    ))),
                  ],
                ),
              ],
            ),



          ],
        ),
      ),

    );;

  }
}
