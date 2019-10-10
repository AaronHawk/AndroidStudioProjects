import 'package:flutter/material.dart';


void main()
{
  runApp( MaterialApp(
      home: new MyStatelessWidget()
  )
  );
}


class MyStatelessWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Stateless Widget")),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(child: ListTile(
                      title: new Text("I Love Flutter", style: new TextStyle(fontSize:25.0)),
                      subtitle: new Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
                  )),
                  Card(child: ListTile(
                    title: new Text("I Love Hamburgers", style: new TextStyle(fontSize:35.0)),
                    leading: new Icon(Icons.fastfood, size: 40.0, color: Colors.brown)
                  )),
                  Card(child: ListTile(
                    title: new Text("I love taking pictures", style: new TextStyle(fontSize: 30.0)),
                    trailing: new Icon(Icons.camera_enhance, size: 20.0, color: Colors.lightGreen)
                  )),


                ]
            )

        )

    );

  }

}



