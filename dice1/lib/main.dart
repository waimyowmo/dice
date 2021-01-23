import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Image.asset("images/dice1.png")),
        Expanded(child: Image.asset("images/dice1.png"))
      ],
    );
  }
}
