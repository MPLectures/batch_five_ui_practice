import 'package:flutter/material.dart';

class ScreenImpConcepts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth * 0.9,
            height: screenHeight * 0.5,
            // color: Colors.teal.shade900,
            color: Colors.teal.withOpacity(0.4),
          ),
          Container(
            color: Colors.red.withOpacity(0.5),
            width: screenWidth,
            height: screenHeight * 0.5,
          ),
        ],
      ),
    );
  }
}

// 2 : 1
