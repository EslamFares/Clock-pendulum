import 'package:flutter/material.dart';
import 'HomeScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock',
      theme: ThemeData.dark(),
//      ThemeData(primarySwatch: Colors.blue,),
      home:HomeScreen(),
    );
  }
}


