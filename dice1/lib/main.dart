import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of    your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("Dice"),
          ),
          body: DiceApp(),
        ));
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftdice = 1;
  int rightdice = 1;
  void changedice() {
    setState(
      () {
        leftdice = Random().nextInt(6) + 1;
        rightdice = Random().nextInt(6) + 1;
        print("This is left = $leftdice");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset("images/dice$leftdice.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changedice();
              },
              child: Image.asset("images/dice$rightdice.png"),
            ),
          )
        ],
      ),
    );
  }
}
