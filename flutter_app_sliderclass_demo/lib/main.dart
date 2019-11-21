//flutter_app_sliderclass_demo

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: myApp()));
}

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) {
    setState(() {
      _value1 = value;
      print(_value1);
    });
  }

  void _onChanged2(bool value) {
    setState(() {
      _value2 = value;
      print("Switch 2: " + _value2.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sliders")),
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              Switch(value: _value1, onChanged: _onChanged1),
              SwitchListTile(
                  value: _value2,
                  onChanged: _onChanged2,
                  title: Text("My Slider",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)))
            ])));
  }
}
