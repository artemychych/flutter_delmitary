import 'package:apt_delievery/widgets/schedule.dart';
import 'package:flutter/material.dart';
class CourierPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Иннокентьев Артем'
        ),
      ),
      body: Container(

        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset("assets/images/BigMac.jpg"),

                ),
                Text('Телефон: 89999999999'),
              ],
            ),
            Schedule(),
          ],
        ),
      ),
    );
  }
}
