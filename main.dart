import 'package:flutter/material.dart';
import 'package:project_u1/Home_Screen.dart';
import 'package:project_u1/Login_Screen.dart';
import 'package:project_u1/Messenger_Screen.dart';

void main() {
  runApp(MyApp());
}


// class MyApp
class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }

}