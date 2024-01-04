import 'package:flutter/material.dart';
import 'package:final_6313037/wigets/Second/CartAppBar.dart';
import 'package:final_6313037/wigets/Second/CartBottomNavBar.dart';
import 'package:final_6313037/wigets/Second/CartItemSamples.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top:15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(children: [
              CartItemSamples(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(Icons.add,
                        color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:10),
                        child: Text(
                          "Add Coupon Code",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
