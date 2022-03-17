import 'package:apt_delievery/auth/load_screen.dart';
import 'package:apt_delievery/reception.dart';
import 'package:apt_delievery/restaurants.dart';
import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();
  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        widgetTitle: Image.asset('assets/images/delmitary.png', height: 30,),
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        styleDescription: TextStyle(
          color: Color(0xff000000),
          fontSize: 12,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Color(0xffFAF9FE),

      ),
    );
    slides.add(
      new Slide(
        title: "PENCIL",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "images/photo_pencil.png",
        backgroundColor: Color(0xffFAF9FE),
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "images/photo_ruler.png",
        backgroundColor: Color(0xffFAF9FE),
      ),
    );

  }

  void onDonePress() {

    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (context) => new LoadScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return new Container(

      child: new Center(
        child: IntroSlider(
          slides: this.slides,
          onDonePress: this.onDonePress,
          colorSkipBtn: Color(0xff000000),
          colorDoneBtn: Color(0xff000000),
         
        ),
      ),
    );
  }
}