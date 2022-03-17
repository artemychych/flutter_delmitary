import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../reception.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _dropdownValue = '+7';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text("Войти"),
              Text("Номер телефона"),
              Row(
                children: [
                  Flexible(
                      flex: 2,
                      child: DropdownButton<String>(
                        value: _dropdownValue,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            _dropdownValue = newValue;
                          });
                        },
                        items: <String>['+7', '+8', '+9', '+10']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )),
                  Flexible(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "(***) *** ** **",
                      ),
                    ),
                  ),
                ],
              ),
              Text("Пароль"),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "🔒 6+ символов",
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              Container(
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
                      Navigator.of(context).pushReplacement(new MaterialPageRoute(
                          builder: (context) => new Reception(0)));
                    },
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {

                },
                child: Center(
                  child: Text(
                    "Напомнить пароль?",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
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
