import 'package:flutter/material.dart';
import 'package:wechat/home/home_screen.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        title: "微信",
        home:HomeScreen(),
    );
  }
}
