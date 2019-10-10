//PageOne.dart
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget{
  @override
  PageOneState createState() => HomePageState();

}
//note
class PageOneState extends State<PageOne>{


String mainProfilePix = "http://wwwnc.fvcc.edu/fileadmin/photos/people/james_goudy.jpg";
String minProfilePix = "https://cdn.hswstatic.com/gif/pug.jpg";

void switchUser(){
  String backupString = mainProfilePix;
  this.setState((){
    mainProfilePix = minProfilePix;
    minProfilePix = backupString;
  });
}

@override
Widget build(BuildContext context){
  return Scaffold(
      appBar: AppBar(title: Text("My Drawer App"),
          backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
            children: <Widget>[
        UserAccountsDrawerHeader(
        accountName: Text("Bubba Smith"),
        accountEmail: Text("BubbaSmith@gmail.com"),
        currentAccountPicture: GestureDetector(
            onTap: ()=> switchUser(),
            child: CircleAvatar(backgroundImage: NetworkImage(mainProfilePix))
        ),
        otherAccountsPictures: <Widget>[
          GestureDetector(
              onTap: ()=> print("this is the other user"),
              child: CircleAvatar(backgroundImage: NetworkImage(minProfile)
              )
              ]
          ),
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,
                  image: new)
          ),
          ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_up),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRout(
                    builder: (BuildContext context => OtherPage("Page One"))))
              }
          ),
          ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRout(
                    builder: (BuildContext context => OtherPage("Page Two"))))
              }
          ),
          Divider(),
          ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.cancel),
              onTap: () {
                Navigator.of(context).pop();
              }
          ),
        ],
      )

  ),
  body: Center(
  child: Text("Main Page", style: TextStyle(fontSize: 36.0))
  )

  );
}
//another note
}

