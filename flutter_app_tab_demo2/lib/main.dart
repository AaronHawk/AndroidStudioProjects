import 'package:flutter/material.dart';

//tab demo2


void main()
{
  runApp(MaterialApp(home: myTabs));
}

class myTabs extends StatefulWidget{
  @override
  myTabsState extends createState()=> myTabsState();
}

class myTabsState extends State<myTabs> with SingleTickerProviderStateMixin{

  TabController mytabcontroller;

  @override
  void initState()
  {
    super.initstate();
    mytabcontroller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose()
  {
    mytabcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context)
  return Scaffold(
  appBar: AppBar(title: Text("Pages"), backgroundColor: Colors.green,
  bottom:  TabBar(controller: mytabcontroller,
  tabs: <tab>[
  Tab(	icon: Icon(Icons.arrow_forward)),
  Tab(	icon: Icon(Icons.arrow_downward)),
  Tab(  icon: Icon(Icons.arrow_back))
  ])),
  bottomNavigationBar: Material(
  color: Colors.blue,
  child: TabBar(controller: mytabcontroller,
  tabs: <Tab>[
  Tab(text: Text("Forward")),
  Tab(text: Text("Down")),
  Tab(text: Text("Back"))
  ]
  )
  ),
  body: TabView(

  controller: mytabcontroller,
  children:  <Widget>[
  first.First(),
  second.Second(),
  third.Third()
  ]

  )
  );


}
