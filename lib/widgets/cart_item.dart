import 'package:apt_delievery/widgets/meal_card.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String id;
  final int count;

  CartItem({
    @required this.id,
    @required this.count,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  Map<String, String> photos = {
    "1": "assets/images/BigMac.jpg",
    "2": "assets/images/cheeseburger.png",
  };
  Map<String, String> names = {"1": "Бигмак", "2": "Чизбургер"};

  Map<String, String> costs = {"1": "130", "2": "49"};

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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            Container(
              child: Image.asset(
                photos[widget.id],
                width: 100,
                height: 100,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          names[widget.id],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          costs[widget.id],
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    FlatButton(
                        onPressed: () => null,
                        child: CircleAvatar(child: Text('-'))),
                    Text(widget.count.toString()),
                    FlatButton(
                        onPressed: () => null,
                        child: CircleAvatar(child: Text('+'))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
