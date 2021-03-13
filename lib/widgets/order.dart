import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  final String restaurant;
  final String name;
  final int room;
  Order({
    @required this.name,
    @required this.restaurant,
    @required this.room,
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
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name),
            Text(room.toString()),
            Text(restaurant)
          ],
        ),
      ),
    );
  }
}
