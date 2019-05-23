import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        title: "",
        home:Center(

       child:  FloatingActionButton(
            child: Icon(Icons.add),
            tooltip: "别按了",
            onPressed: (){}
        ),
        )
    );
  }
}
