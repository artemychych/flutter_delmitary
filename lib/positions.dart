

import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';

class Positions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alp Delivery'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            'Меню',
            style: TextStyle( fontSize: 24),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index){
                  return Text('${index} gjitk yf[eq');
                }),
          ),
        ]),
      ),
    );
  }
}
