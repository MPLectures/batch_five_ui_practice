import 'package:flutter/material.dart';

class SingleMultiChild extends StatelessWidget {
  const SingleMultiChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Red"),
                Container(
                  height: 230,
                  width: 230,
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Yellow"),
                      Container(
                        height: 170,
                        width: 170,
                        color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              color: Colors.blue,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    color: Colors.white,
                                  ),
                                  Text("Blue"),
                                ],
                              ),
                            ),
                            Text("Green")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // child: Row(
        //   children: [
        //     Container(
        //       height: 70,
        //       width: 70,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 90,
        //       width: 70,
        //       color: Colors.brown,
        //     ),
        //   ],
        // ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 300,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 350,
        //       color: Colors.blue,
        //     ),
        //     // Container(
        //     //   height: 100,
        //     //   width: 400,
        //     //   color: Colors.green,
        //     // ),
        //     Text("Arslan")
        //   ],
        // ),
      ),
    );
  }
}
