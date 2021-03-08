import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('IntroScreen'),
      ),
      body: new Center(
        child: new Text('This is the IntroScreen'),
      ),
    );
  }
}