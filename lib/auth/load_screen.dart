import 'package:apt_delievery/auth/auth_screen.dart';
import 'package:flutter/material.dart';

import '../reception.dart';

class LoadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Flexible(
                child: Container(),
                flex: 13,
              ),
              Flexible(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (context) => new AuthScreen()));
                  },
                  child: Image.asset(
                    "assets/images/delmitary.png",
                    height: 39,
                    width: 182,
                  ),
                ),
              ),
              Flexible(child: Container(), flex: 8,),
              Flexible(
                flex: 9,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/auth/load_image.png",
                    height: 181,
                    width: 247,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
