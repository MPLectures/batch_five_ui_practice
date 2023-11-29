import 'package:batch_five_ui_practice/views/screens/changing_images.dart';
import 'package:batch_five_ui_practice/views/screens/states_of_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ScreenTest(),
      home: ChangingImages(),
    );
  }
}
