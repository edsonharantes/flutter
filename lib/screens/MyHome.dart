import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hello_world/widgets/keyBoard.dart';
import '_keyboard.dart';

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
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
      ),
      body: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Observer(
                builder: (_) {
                  return Text('${key.counter}',
                      style: TextStyle(color: Colors.white, fontSize: 34));
                },
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text("hello"),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1)),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
                child: MyKeyBoard(controller: key),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1))),
          ],
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
