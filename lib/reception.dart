import 'package:apt_delievery/cartScreen.dart';
import 'package:apt_delievery/couriers.dart';
import 'package:apt_delievery/restaurants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter/material.dart';

import 'orders.dart';

class Reception extends StatefulWidget {
  int _selectedIndex = 0;
  Reception(this._selectedIndex);
  @override
  _ReceptionState createState() => _ReceptionState(this._selectedIndex);
}

class _ReceptionState extends State<Reception> {

  int _selectedIndex = 0;
  PageController _pageController;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    Restaurants(),
    Orders(),
    Couriers(),
    CartScreen(),
  ];

  _ReceptionState(this._selectedIndex);
  @override
  void initState(){
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void onTabTapped(int index) {
    this._pageController.animateToPage(index,duration: const Duration(milliseconds: 300),curve: Curves.easeInOut);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('Delmitary'),
        gradient: LinearGradient(
          colors: [
            Colors.cyan,
            Colors.indigo,
          ],
        ),
      ),
      body: PageView(
        children: _widgetOptions,
        onPageChanged: _onItemTapped,
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTabTapped,
        unselectedItemColor: Colors.blueAccent,
        selectedItemColor: Colors.indigo,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.local_mall), title: Text("Рестораны")),
          BottomNavigationBarItem(icon: Icon(Icons.reorder), title: Text("Заказы")),
          BottomNavigationBarItem(icon: Icon(Icons.directions_run), title: Text("Курьеры")),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text("Корзина")),
        ],

      ),
    );
  }
}
