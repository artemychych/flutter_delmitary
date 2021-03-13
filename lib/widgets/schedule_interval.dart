import 'package:flutter/material.dart';
class ScheduleInterval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        child: Row(
          children: [
            Text('8:00 - 9:00'),
            CircleAvatar(
              child: Text('Свободен'),
              backgroundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
