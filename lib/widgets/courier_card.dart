import 'package:apt_delievery/models/courier.dart';
import 'package:apt_delievery/screens/courier_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourierCard extends StatelessWidget {
  final Courier courier;

  CourierCard(
    this.courier,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
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
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new CourierPage(courier)));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            width: double.infinity,
            height: 80,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  courier.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: Image.asset(courier.imgPath).image,
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
