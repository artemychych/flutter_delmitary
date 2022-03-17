import 'package:apt_delievery/widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:apt_delievery/api/restaurants.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class Restaurants extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                'Рестораны',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: FutureBuilder<List<dynamic>>(
              future: getRestaurantsList(http.Client()),
              builder: (context, snapshot) {
                print(snapshot.data);
                if (snapshot.hasError) {
                  return const Center(
                    child: Text('An error has occurred!'),
                  );
                } else if (snapshot.hasData) {
                  return Container(
                    height: 400,
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return RestaurantCard(restaurant: snapshot.data[index]);
                        }),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              }),
        ),
      ]),
    );
  }
}
