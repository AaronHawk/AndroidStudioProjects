/*

flutter_app_dbdemo_a
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Server App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data;
  var value = {};
  var bs = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(bs),
      ),
    );
  }

  Future getData() async {
    var url = 'http://flutter.locusnoesis.com/get..php';
    http.Response response = await http.get(url);
    data = await jsonDecode(response.body);

    print(data.toString());

    for (var e in data) {
      bs = bs +
          "Owner Last Name " +
          e['OwnerLN'] +
          "\nMake: " +
          e['Make'] +
          "\nModel: " +
          e['Model'] +
          "\nCarYear" +
          e['CarYear'] +
          "\n\n";
    }

    print(bs);
  }

  @override
  void initState() {
    getData();
  }
}
