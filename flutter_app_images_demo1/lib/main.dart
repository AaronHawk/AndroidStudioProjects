//flutter_images_demo1
import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  Widget wdog1 = Padding(
      padding: EdgeInsets.all(10.0), child: Image.asset("images/dog1.jpeg"));

  Widget wdog2 = Padding(
      padding: EdgeInsets.all(10.0), child: Image.asset("images/dog2.jpeg"));

  Widget wele = Padding(
      padding: EdgeInsets.all(10.0), child: Image.asset("images/ele.png"));

  Widget wdog1text = Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("Griz is a nice dog. Roof Roof",
          textAlign: TextAlign.center,
          style: TextStyle(
              backgroundColor: Colors.yellow,
              fontSize: 48.0,
              color: Colors.black,
              fontFamily: "Courier")));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("Images")),

            body: Container(
                padding: EdgeInsets.all(10.0),
                child: ListView(children: <Widget>[
                  wdog1,
                  wdog1text,
                  wele,
                  wdog2,
                  Image.asset("images/dog1.jpeg")
                ]))));
  }
}

