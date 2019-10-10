//PageOne.dart
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  PageOneState createState() => HomePageState();

}

PageOneState extends State<PageOne>{


String mainProfilePix = "http://wwwnc.fvcc.edu/fileadmin/photos/people/james_goudy.jpg";
String minProfilePix = "https://cdn.hswstatic.com/gif/pug.jpg";

void switchUser() {
  String backupString = mainProfilePix;
  this.setState(() {
    mainProfilePix = minProfilePix;
    minProfilePix = backupString;
  });
}


}
