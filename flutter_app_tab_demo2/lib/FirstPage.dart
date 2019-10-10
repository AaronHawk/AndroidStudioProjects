//new page
//FirstPage.dart
import 'package:flutter/material.dart';

class First extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("First First yeah its first"),
                Text("First First yeah its first xx"),
                Text("First First yeah its first xxx"),
                Text("First First yeah its first xxxxx"),


              ],


            )
        )
    );
  }

}

