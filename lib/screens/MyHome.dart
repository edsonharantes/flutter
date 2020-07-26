import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'keyboard.dart';

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  final key = Controller_key();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotina", style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Observer(
              builder: (_) {
                return Text('${key.counter}',
                    style: TextStyle(color: Colors.white, fontSize: 34));
              },
            ),
            Text("tags")
          ],
        ),
        Row(
          children: <Widget>[Text("this is where the history is")],
        ),
        Row(
          children: <Widget>[new MyKeyBoard(controller: key)],
          mainAxisAlignment: MainAxisAlignment.end,
        )
      ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
      backgroundColor: Colors.green,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('this is a drawerHead'),
            ),
            ListTile(
              title: Text('this is list title'),
            ),
            Text('this is normal text')
          ],
        ),
      ),
    );
  }
}

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
