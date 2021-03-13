import 'package:apt_delievery/screens/courier_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourierCard extends StatelessWidget {

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
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new CourierPage()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  child: Center(
                    child: Text(
                      'Иннокентьев Артем',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                ),

                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.cancel_outlined, color: Colors.white,),
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}