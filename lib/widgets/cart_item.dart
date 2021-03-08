import 'package:flutter/material.dart';
class CartItem extends StatefulWidget {
  final String id;
  final int count;
  final String imgPath = "assets/images/BigMac.jpg";
  CartItem({
    @required this.id,
    @required this.count,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {


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
              child: Image.asset(widget.imgPath,
                width: 100,
                height: 100,
              ),
            ),
            Column(
              children: [
                Container(
                  child: Row(

                    children: [
                      Container(
                        child: Text(
                          "БигМак",

                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "130",
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
                    FlatButton(onPressed: () => null, child: CircleAvatar(child: Text(
                        '-'
                    ))),
                    Text(widget.count.toString()),
                    FlatButton(onPressed: () => null, child: CircleAvatar(child: Text(
                        '+'
                    ))),

                  ],
                ),
                Text("Id: "+widget.id),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
