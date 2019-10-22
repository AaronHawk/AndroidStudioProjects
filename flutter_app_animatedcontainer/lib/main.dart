import 'package:flutter/material.dart';
//flutter_app_animatedcontainer

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Animated Container",
        home: Scaffold(
          appBar: AppBar(title: Text("Animated Container")),
          body: MyStatefulWidget(),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
            child: Column(children: <Widget>[
          AnimatedContainer(
              margin: EdgeInsets.all(20.0),
              width: selected ? 200.0 : 500,
              height: selected ? 100.0 : 200.0,
              color: selected ? Colors.red : Colors.blue,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 2),
              curve: Curves.easeInCirc,
              child: Text("Box 1 - Yada Yada")),
          AnimatedContainer(
              margin: EdgeInsets.all(20.0),
              width: selected ? 300.0 : 100,
              height: selected ? 100.0 : 150.0,
              color: selected ? Colors.yellow : Colors.green,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(seconds: 2),
              curve: Curves.easeInCirc,
              child: Text("Box 2 - Yada Yada")),
          AnimatedContainer(
              margin: EdgeInsets.all(20.0),
              width: 125,
              height: selected ? 75.0 : 100.0,
              color: selected ? Colors.grey : Colors.yellow,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.bottomEnd,
              duration: Duration(seconds: 5),
              curve: Curves.bounceIn,
              child: Text("Box 2 - Yada Yada")),
        ])));
  }
}
