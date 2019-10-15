import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;
//tab demo2

void main() {
  runApp(MaterialApp(home: myTabs()));
}

class myTabs extends StatefulWidget {
  @override
  myTabsState createState() => myTabsState();
}

class myTabsState extends State<myTabs> with SingleTickerProviderStateMixin {
  TabController mytabcontroller;

  @override
  void initState() {
    super.initState();
    mytabcontroller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    mytabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Alarm Clock"),
            backgroundColor: Colors.blueGrey[900],
            bottom: TabBar(controller: mytabcontroller, tabs: <Tab>[
              Tab(icon: Icon(Icons.alarm)),
              Tab(icon: Icon(Icons.alarm_add)),
              Tab(icon: Icon(Icons.alarm_on))
            ])),
        bottomNavigationBar: Material(
            color: Colors.green[900],
            child: TabBar(controller: mytabcontroller, tabs: <Tab>[
              Tab(text: "List of alarms"),
              Tab(text: "Add alarm"),
              Tab(text: "Completed task")
            ])),
        body: TabBarView(
            controller: mytabcontroller,
            children: <Widget>[first.First(), second.Second(), third.Third()]));
  }
}
