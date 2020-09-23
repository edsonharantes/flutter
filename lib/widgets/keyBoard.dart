import 'package:flutter/material.dart';
import 'package:hello_world/screens/_keyboard.dart';

class MyKeyBoard extends StatefulWidget {
  final Controller_key controller;

  const MyKeyBoard({Key key, this.controller}) : super(key: key);

  MyKeyboardState createState() => MyKeyboardState();
}

class MyKeyboardState extends State<MyKeyBoard> {
  Widget buildButton(String buttonText) {
    return OutlineButton(
        child: Text(
          buttonText,
          style: new TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, height: 2.3),
        ),
        onPressed: () {
          if (buttonText != "C") {
            widget.controller.increment(buttonText);
          } else {
            widget.controller.clear();
          }

          print(widget.controller.counter);
        },
        color: Colors.white,
        textColor: Colors.black54,
        padding: new EdgeInsets.all(18.0));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              buildButton("0"),
              buildButton(","),
              buildButton("C")
            ],
          ),
          Row(
            children: <Widget>[
              buildButton("1"),
              buildButton("2"),
              buildButton("3")
            ],
          ),
          Row(
            children: <Widget>[
              buildButton("4"),
              buildButton("5"),
              buildButton("6")
            ],
          ),
          Row(
            children: <Widget>[
              buildButton("7"),
              buildButton("8"),
              buildButton("9")
            ],
          ),
        ],
        verticalDirection: VerticalDirection.up,
      ),
      decoration: BoxDecoration(color: Colors.white, border: Border.all()),
    );
  }
}
