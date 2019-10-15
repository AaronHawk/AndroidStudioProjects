//new page
//ThirdPage.dart
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: new EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("This page is for adding an alarm."),
            Text("You can tell by the 'Add alarm' button"),
            Image.asset('images/alarm.png'),
          ],
        )));
  }
}
