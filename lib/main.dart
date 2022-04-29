import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onestop_solution/Screens/home_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoorStep Solution',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: HomePage(),
    );
  }

}
