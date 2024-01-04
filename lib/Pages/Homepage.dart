// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fin_6313037/wigets/Second/CategoriesWiget.dart';
import 'package:fin_6313037/wigets/Second/HomeAppBar.dart';
import 'package:fin_6313037/wigets/Second/IteamsWidget.dart';

class Homepage extends StatelessWidget{
  @override
Widget build(BuildContext context){
  return Scaffold(
    body: ListView(children: [
      HomeAppBar(),
      Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
        ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal:15),
              padding: EdgeInsets.symmetric(horizontal:15) ,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here..."
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  size: 27,
                  color: Colors.black,
                ),
              ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 25, 
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
            ),
            CategoriesWiget(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Text(
                "Best Selling",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
            ),
            IteamsWidget(),
          ],
          ),
      ),
    ],
    ),
    bottomNavigationBar: CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      onTap: (index) {
        Navigator.pushNamed(context, "cartPage");
      },
      height: 70,
      color: Colors.black,
      items:[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          CupertinoIcons.cart_fill,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
      ],
      ),
  );
}
}