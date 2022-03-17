import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:apt_delievery/models/restaurant.dart';
import 'package:http/http.dart' as http;
import 'package:apt_delievery/restaurants.dart';
import 'base.dart';

Future<List<Restaurant>> getRestaurantsList(http.Client client) async {
  final HOST_NAME = "http://195.2.70.197:8100";
  var requestUrl = HOST_NAME+"/api/shop/";
  ///var requestUrl = Uri.http(HOST_NAME, "/good", {"shop_id": id.toString()});
  final response = await client.get(requestUrl, headers: {
    HttpHeaders.contentTypeHeader: 'application/json',
  });
  final goodListJson = jsonDecode(utf8.decode(response.bodyBytes))['results'];
  return goodListJson.map<Restaurant>((obj) => Restaurant.fromJson(obj)).toList();
}
