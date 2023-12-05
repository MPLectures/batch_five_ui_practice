import 'package:flutter/material.dart';

class ScreenExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 300,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 200,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  1:2