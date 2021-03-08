import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../positions.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String imgUrl;

  RestaurantCard({
    @required this.name,
    @required this.imgUrl,
  });

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
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new Positions()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Container(
                child: Image.asset(imgUrl,
                  width: 100,
                  height: 100,
                ),

              ),
              Container(
                width: 200,
                child: Center(
                  child: Text(
                    name,

                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}

