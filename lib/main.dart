import 'package:animatedo/UI/Screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animatedo/UI/Screens/navigationpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Animate do',
      home:HomePage()
    );
  }
}