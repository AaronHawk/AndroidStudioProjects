//new page
//ThirdPage.dart
import 'package:flutter/material.dart';

//note
class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: new EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("This page would be for making tasks that"),
            Text("you could check to complete throughout the day."),
          ],
        )));
  }
}
