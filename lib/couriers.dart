import 'package:apt_delievery/models/courier.dart';
import 'package:apt_delievery/widgets/courier_card.dart';
import 'package:flutter/material.dart';

class Couriers extends StatefulWidget {
  @override
  _CouriersState createState() => _CouriersState();
}

class _CouriersState extends State<Couriers> {
  Courier courier1 = Courier(
      name: "Артем Иннокентьев",
      number: "89112233444",
      schedule: null,
      imgPath: 'assets/images/image1.jpg');
  Courier courier2 = Courier(
      name: "Иван Иванов",
      number: "88005553535",
      schedule: null,
      imgPath: 'assets/images/image2.jpg');
  Courier courier3 = Courier(
      name: "Александр Македонский",
      number: "89313131313",
      schedule: null,
      imgPath: 'assets/images/image3.jpg');
  Courier courier4 = Courier(
      name: "Василий Пробейголова",
      number: "89991119999",
      schedule: null,
      imgPath: 'assets/images/image4.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Opacity(
              opacity: 0.9,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo[300]),
                    color: Colors.deepPurple[900],
                ),
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text(
                    'Курьеры',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            CourierCard(courier1),
            CourierCard(courier2),
            CourierCard(courier3),
            CourierCard(courier4),
          ],
        ),
    );
  }
}
