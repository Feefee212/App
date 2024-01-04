import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\฿10,500",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onTap: () {
                  // Show the AlertDialog when the button is tapped
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Confirm Purchase"),
                        content: Text("Are you sure you want to proceed with the purchase?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Close the AlertDialog
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel", style: TextStyle(color: Colors.black)),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add your checkout functionality here
                              // Close the AlertDialog
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black, // Set the black color for Confirm button
                            ),
                            child: Text("Confirm", style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Check Out",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
