import 'package:flutter/material.dart';

class Restaurant {
  final String name;
  final String address;
  final String icon;
  final int id;
  final int nearest_dormitory;
  final dynamic mean_price;
  final int walk_time;
  final int bike_time;

  const Restaurant({
    @required this.name,
    @required this.address,
    @required this.icon,
    @required this.id,
    @required this.nearest_dormitory,
    @required this.mean_price,
    @required this.walk_time,
    @required this.bike_time,
  });


  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      address: json['address'],
      id: json['id'],
      icon: json['icon'],
      nearest_dormitory: json['nearest_dormitory'],
      mean_price: json['mean_price'],
      walk_time: json['walk_time'],
      bike_time: json['bike_time'],
    );
  }

}