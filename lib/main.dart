import 'package:flutter/material.dart';
import 'package:traning/home.dart';
import 'package:traning/seplashmy.dart';



void main() {

  runApp(MyApp());
}





class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:
    Scaffold(
      body: MySeplash(),
    ),

    );
  }
}


