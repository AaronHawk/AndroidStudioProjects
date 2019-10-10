import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ScreenA()));
}

class ScreenA extends StatelessWidget {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: RefreshIndicatorState());
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Goudy Skills",
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Text('About')),
                      Tab(icon: Text('Skills')),
                      Tab(icon: Text('Hobbies'))
                    ],
                    controller: _tabController,
                  ),
                  title: Text("My Skills"),
                ),
                body: TabBarView(controller: _tabController, children: [
                  //contents under tab one
                  FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString("assets/bobrossipsum.txt"),
                      builder: (context, snapshot) {
                        return Text(snapshot.data ?? '', softWrap: true);
                      }),
//contents under tab two
                  FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString("assets/onlinedateipsumn.txt"),
                      builder: (context, snapshot) {
                        return Text(snapshot.data ?? '', softWrap: true);
                      }),
//contents under tab three
                  FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString("assets/pirateipsum.txt"),
                      builder: (context, snapshot) {
                        return Text(snapshot.data ?? '', softWrap: true);
                      }),
                ]))));
  }
}


