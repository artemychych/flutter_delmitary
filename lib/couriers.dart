import 'package:apt_delievery/widgets/courier_card.dart';
import 'package:flutter/material.dart';
class Couriers extends StatefulWidget {
  @override
  _CouriersState createState() => _CouriersState();
}

class _CouriersState extends State<Couriers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
              return CourierCard();
            }),
      ),
    );
  }
}
