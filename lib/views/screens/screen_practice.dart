import 'package:flutter/material.dart';

class ScreenPractice extends StatefulWidget {

  @override
  State<ScreenPractice> createState() => _ScreenPracticeState();
}

class _ScreenPracticeState extends State<ScreenPractice> {
  Color boxColor1 = Colors.red;

  Color boxColor2 = Colors.blue;

  Color boxColor3 = Colors.green;

  Color? temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: boxColor1,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: boxColor2,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 100,
              color: boxColor3,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  temp = boxColor1;
                  boxColor1 = boxColor2;
                  boxColor2 = boxColor3;
                  boxColor3 = temp!;
                });
              },
              child: Icon(
                Icons.refresh,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
