import 'package:flutter/material.dart';

class Meal {
  final int id;
  final String name;
  final int cost;
  final String imgPath;
  final int count;

  Meal({
    @required this.id,
    @required this.name,
    @required this.cost,
    @required this.imgPath,
    @required this.count
  });
}