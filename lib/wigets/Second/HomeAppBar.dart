import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:final_6313037/Pages/Cartpage.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Sneaker Ways",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(7),
            child: badges.Badge(
              badgeContent: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: () {
                  // Navigate to the cart page using Navigator.push
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      // Replace `Cartpage()` with the actual widget for your cart page
                      return Cartpage();
                    }),
                  );
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
