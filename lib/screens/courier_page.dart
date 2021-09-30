import 'package:apt_delievery/models/courier.dart';
import 'package:apt_delievery/widgets/schedule.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class CourierPage extends StatelessWidget {
  final Courier courier;

  CourierPage(
    this.courier,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(courier.name),
        gradient: LinearGradient(
          colors: [
            Colors.cyan,
            Colors.indigo,
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: CircleAvatar(
                    radius: 60.0,
                    backgroundImage: Image.asset(courier.imgPath).image,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 200,
                  child: Row(
                    children: [
                      Text(
                        'Телефон: ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        courier.number,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Schedule(),
          ],
        ),
      ),
    );
  }
}
