import 'package:flutter/material.dart';

class ScheduleInterval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 0.5, horizontal: 5),
      child: Card(
        elevation: 0.5,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // if you need this
          side: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                '8:00 - 9:00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.run_circle,
                size: 50,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
