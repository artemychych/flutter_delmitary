import 'package:flutter/cupertino.dart';

class Courier {
  final String name;
  final String number;
  final Map<String, bool> schedule;
  final String imgPath;

  Courier({
    @required this.name,
    @required this.number,
    @required this.schedule,
    @required this.imgPath,
});
}