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
        title: 'Video Game App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: MyHomePage(title: 'Video Game Page'));
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
    var url = 'http://flutter.locusnoesis.com/get_videogames.php';
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
                          title: Text(
                              data[index]['title'] + " " + data[index]['year']),
                          subtitle: Text(data[index]['platform'] +
                              " " +
                              data[index]['genre'] +
                              " " +
                              data[index]['players'] +
                              " " +
                              data[index]['ratings'] +
                              " " +
                              data[index]['year']))
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
              child: Text("Vidya Games",
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                  textAlign: TextAlign.left)),
          Expanded(child: myWidget)
        ]));
  }
} //end of class
