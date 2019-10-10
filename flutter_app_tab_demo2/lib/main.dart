import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;
//tab demo2


void main()
{
  runApp(MaterialApp(home: myTabs()));
}

class myTabs extends StatefulWidget{
  @override
  myTabsState  createState()=> myTabsState();
}

class myTabsState extends State<myTabs> with SingleTickerProviderStateMixin{

  TabController mytabcontroller;

  @override
  void initState()
  {
    super.initState();
    mytabcontroller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose()
  {
    mytabcontroller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pages"), backgroundColor: Colors.green,
            bottom: TabBar(controller: mytabcontroller,
                tabs: <Tab>[
                  Tab(icon: Icon(Icons.arrow_forward)),
                  Tab(icon: Icon(Icons.arrow_downward)),
                  Tab(icon: Icon(Icons.arrow_back))
                ])),
        bottomNavigationBar: Material(
            color: Colors.blue,
            child: TabBar(controller: mytabcontroller,
                tabs: <Tab>[
                  Tab(text: Text("Forward").toString()),
                  Tab(text: Text("Down").toString()),
                  Tab(text: Text("Back").toString())
                ]
            )
        ),
        body: TabBarView(

            controller: mytabcontroller,
            children: <Widget>[
              first.First(),
              second.Second(),
              third.Third()
            ]

        )
    );
  }
}

