import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName: (BuildContext context) =>
      new MyItemsPage(title: "MyItemsPage Title")
    };
    return new MaterialApp(
      title: 'Flutter Demo Stateful Pages',
      theme: ThemeData(primarySwatch: Colors.red),
      home: new MyHomePage(title: 'Flutter Demo Home Pages'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  //constructor
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
  class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

  void _incrementCounter(){
    Navigator.pushNamed(context, MyItemsPage.routeName);
  }
  @override
    Widget build(BuildContext context){
    var button = new IconButton(icon: new Icon(Icons.access_alarm), onPressed: _onButtonPressed);

    return new Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Text('Doggle'),
          Text('Cattus'),
          button
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
          child: Icon(Icons.add)
      )
    );
  }
void _onButtonPressed(){
    Navigator.pushNamed(context, MyItemsPage.routeName);
 }

}
class MyItemsPage extends StatefulWidget{
  MyItemsPage({Key key, this.title}): super(key: key);

  static const String routeName = "/MyItemsPage";
  final String title;

  @override
  _MyItemsPageState createState() => _MyItemsPageState();
}

class _MyItemsPageState extends State<MyItemsPage>
{
  @override
  Widget build(BuildContext context)
  {
    var button = new IconButton(icon: new Icon(Icons.arrow_back), onPressed: _onButtonPressed);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            button
            ]
        )
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
          tooltip: 'Add',
          child: new Icon(Icons.add)
    )
    );
  }
void _onFloatingActionButtonPressed(){}
void _onButtonPressed(){
  Navigator.pop(context);
  }
}