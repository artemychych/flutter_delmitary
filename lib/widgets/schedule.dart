import 'package:apt_delievery/widgets/schedule_interval.dart';
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Container(
              height: 30,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Расписание",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return ScheduleInterval();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
