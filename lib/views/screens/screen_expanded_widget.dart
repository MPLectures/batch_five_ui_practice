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

            // Center(
            //   child: Container(
            //     padding: EdgeInsets.all(20),
            //     height: 200,
            //     width: 300,
            //     color: Colors.red,
            //     child: Container(
            //       // padding: EdgeInsets.only(left: 20,right: 40,bottom: 50,top: 60),
            //       // padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
            //       // padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
            //       color: Colors.yellow,
            //       child: Container(
            //         color: Colors.green,
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
//  1:2
