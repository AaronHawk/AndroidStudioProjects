import 'package:flutter/material.dart';

//flutter_app_calculator

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator",
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: MyHomePage(title: "Calculator"));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //create text controllers
  final myTextController1 = TextEditingController();
  final myTextController2 = TextEditingController();
  final myTextController3 = TextEditingController();
  final myTextController4 = TextEditingController();

//variables
  double principal = 0.0;
  double rate = 0.0;
  double time = 0.0;
  double ans = 0.0;

  int operation = -1;
  String myAns = "Answer";

  void myMath() {
    //Simple interest calc
    //Simple interest = principal * rate * time
    principal = double.parse(myTextController1.text);
    rate = double.parse(myTextController2.text);
    time = double.parse(myTextController3.text);

    if (operation == 1) {
      ans = principal * (rate / 100.0) * time;
    }

    myTextController4.text = ans.toString();
  }

  @override
  void dispose() {
    myTextController1.dispose();
    myTextController2.dispose();
    myTextController3.dispose();
    myTextController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Calculator")),
        body: ListView(padding: EdgeInsets.all(20.0), children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Principal \$\$\$                  "),
                Container(
                    width: 100.0,
                    height: 30.0,
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                        enabled: true,
                        controller: myTextController1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.yellowAccent,
                            hintText: "Enter a number",
                            hintStyle: TextStyle(fontSize: 10.0))))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Interest % (Per month)"),
                Container(
                    width: 100.0,
                    height: 30.0,
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                        enabled: true,
                        controller: myTextController2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.yellowAccent,
                            hintText: "Enter a number",
                            hintStyle: TextStyle(fontSize: 10.0))))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Time (Months)            "),
                Container(
                    width: 100.0,
                    height: 30.0,
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                        enabled: true,
                        controller: myTextController3,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.yellowAccent,
                            hintText: "Enter a number",
                            hintStyle: TextStyle(fontSize: 10.0))))
              ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Answer box
                Text(myAns),
                Container(
                    width: 100.0,
                    height: 30.0,
                    margin: EdgeInsets.all(20.0),
                    child: TextField(
                        enabled: false,
                        controller: myTextController4,
                        decoration: InputDecoration(
                            filled: true, fillColor: Colors.white)))
              ]),
          Row(children: <Widget>[
            //calculate button
            Container(
                width: 361,
                height: 70.0,
                margin: EdgeInsets.all(5.0),
                child: FlatButton(
                    onPressed: () {
                      operation = 1;
                      myMath();
                    },
                    child: Text("Calculate interest",
                        style: TextStyle(fontWeight: FontWeight.bold)))),
          ])
        ]));
  }
}
