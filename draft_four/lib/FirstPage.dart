//new page
//FirstPage.dart
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: new EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("An alarm is an important part of life."),
            Text("If you don't wake up in time"),
            Text("how will you seize the day?"),
            Image.asset('images/alarm.jpeg'),
          ],
        )));
  }
}
