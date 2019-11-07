import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auto Sales',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
        home: MyHomePage(title: 'Flutter Auto Sales')
    );
  }
}

class MyHomePage extends StatefulWidget(){
  MyHomePage()

}