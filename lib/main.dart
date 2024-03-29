import 'package:flutter/material.dart';
import 'package:final_6313037/Pages/Cartpage.dart';
import 'package:final_6313037/Pages/Homepage.dart';
import 'package:final_6313037/Pages/Itempage.dart';
import 'package:final_6313037/Pages/Loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes:{
        "/" : (context) => Loginpage(),
        "homePahe" : (context) => Homepage(),
        "cartPage" : (context) => Cartpage(),
        "itemPage" : (context) => Itempage(),
      },
    );
  }
} 