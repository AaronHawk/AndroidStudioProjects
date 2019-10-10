//new page
//ThirdPage.dart
import 'package:flutter/material.dart';

class Second extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.all(10),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Text("Second"),
                Text("Second yo"),
                Text("It's the third "),
                Text("Thid page I said"),
                Icon(Icons.airline_seat_legroom_normal)


              ],


            )
        )
    );
  }

}

