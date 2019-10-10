import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/HomePage": (BuildContext context) => HomePage(),
        "/SecondPage": (BuildContext context) => SecondPage(),
        "/ThirdPage": (BuildContext context) => ThirdPage()
      }));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Home Page"), backgroundColor: Colors.blue),
        body: new Container(
            child: new Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: new Icon(Icons.looks_one, color: Colors.red),
                          iconSize: 100.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/SecondPage");
                          }),
                      Text("Page One"),
                      IconButton(
                          icon: new Icon(Icons.looks_two, color: Colors.blueAccent),
                          iconSize: 100.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/ThirdPage");
                          }),
                      Text("Page Two"),
                      Text("\nHome")
                    ]))));
  }
}













//github change test
class SecondPage extends StatelessWidget {
  String myText = "\nblah blah blah blah blah blah " +
      "blah blah blah blah blah blah blah blah " +
      "blah blah blah blah blah blah blah blah " +
      "blah blah blah blah blah blah blah blah " +
      "blah blah blah blah blah blah blah " +
      "blah blah blah blah blah ";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Second Page"), backgroundColor: Colors.blue),
        body: new Container(
            margin: EdgeInsets.all(40.0),
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new IconButton(
                          icon: Icon(Icons.home, color: Colors.green),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/HomePage");
                          }),
                      Text("Second Page"),
                      Center(child: Text(myText)),
                      Center(child: Text(myText)),
                      Center(child: Text(myText))
                    ]))));
  }
}
























class ThirdPage extends StatelessWidget {
  String myText = "\nYada yada yada Yada yada yada " +
      "Yada yada yada Yada yada yada Yada yada " +
      "yada Yada yada yada Yada yada yada Yada " +
      "yada yada Yada yada yada Yada yada yada " +
      "Yada yada yada Yada yada yada Yada " +
      "yada yada Yada yada yada ";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Third Page"), backgroundColor: Colors.blue),
        body: new Container(
            margin: EdgeInsets.all(20.0),
            child: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new IconButton(
                          icon: Icon(Icons.home, color: Colors.green),
                          iconSize: 70.0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("/HomePage");
                          }),
                      Center(child: Text("Third Page")),
                      Center(child: Text(myText)),
                      Center(child: Text(myText))
                    ]))));
  }
}

