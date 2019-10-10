import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyTextInput()));
}

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  String theText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(title: Text("Onchange Text"), backgroundColor: Colors.blue),
        body: Container(
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                          decoration: InputDecoration(hintText: "Type here you bozo"),
                          onChanged: (String str) {
                            setState(() {
                              theText = str;
                            });
                          }),
                      Text(theText)
                    ]
                )
            )
        )
    );
  }
}

