//new page
//ThirdPage.dart
import 'package:flutter/material.dart';

class Third extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("Third Third yeah its Third"),
                Text("Third Third yeah its Thirdxx"),
                Text("Third Third yeah its Thirdxxx"),
                Text("Third Third yeah its Thirdxxxxx"),
                Icon(Icons.airline_seat_legroom_normal)


              ],


            )
        )
    );
  }

}

