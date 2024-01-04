// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fin_6313037/wigets/Second/ItemAppBar.dart';

class Itempage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "image/1.png",
              height: 300,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      "Product TItle",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ],
                ),
                ),
                Padding(padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    ],
                  ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

