import 'package:apt_delievery/auth/login_form.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(),
            flex: 6,
          ),
          Flexible(
            flex: 2,
            child: Center(
              child: Container(
                height: 28,
                width: 272,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Привет",
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xff000000)),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 1,
          ),
          Flexible(
            flex: 5,
            child: Container(
              width: 272,
              height: 75,
              child: Opacity(
                opacity: 0.4,
                child: Text(
                  "Amet minim mollit sint. Velit officia consequat duis enim velit mollit. ",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 18,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/auth/auth_image.png",
                  height: 211,
                  width: 202,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              width: 259,
              height: 46,
              child: Card(
                color: Color(0xff9378FF),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(63), // if you need this
                ),
                child: FlatButton(
                  child: Text(
                    "Войти",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => new LoginForm()));
                  },
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: Container(
                width: 272,
                child: Center(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 4,
                        child: Center(
                          child: Text(
                            "Нет еще аккаунта?",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: FlatButton(
                          onPressed: () {

                          },
                          child: Center(
                            child: Text(
                              "Регистрация",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(),
            flex: 4,
          ),
        ],
      ),
    );
  }
}
