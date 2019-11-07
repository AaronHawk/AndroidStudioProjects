/*

flutter_dbdemo_reva
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Auto Sales',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage(title: 'Flutter Auto Sales'));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static var data;
  static var value = {};
  static var bs = "";

  //run on start
  @override
  void initState() {
    getData();
  }

  static Future getData() async {
    var url = 'http://flutter.locusnoesis.com/get.php';
    http.Response response = await http.get(url);
    data = await jsonDecode(response.body);

    return data;
  }

  Widget myWidget = FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                //Text(data[index]['OwnerLN'])
                return Card(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                      ListTile(
                          title: Text(data[index]['OwnerFN'] +
                              " " +
                              data[index]['OwnerLN']),
                          subtitle: Text(data[index]['Make'] +
                              " " +
                              data[index]['Model'] +
                              " " +
                              data[index]['CarYear'] +
                              " " +
                              data[index]['Color']))
                    ]));
              });
        }
        return Text("Getting Data");
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title), centerTitle: true),
        body: Column(children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              child: Text("Cars For Sale",
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  textAlign: TextAlign.left)),
          Expanded(child: myWidget)
        ]));
  }
} //end of class
