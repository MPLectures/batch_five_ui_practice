import 'package:batch_five_ui_practice/views/screens/changing_images.dart';
import 'package:batch_five_ui_practice/views/screens/screen_expanded_widget.dart';
import 'package:batch_five_ui_practice/views/screens/screen_imp_cpmcepts.dart';
import 'package:batch_five_ui_practice/views/screens/screen_login.dart';
import 'package:batch_five_ui_practice/views/screens/screen_practice.dart';
import 'package:batch_five_ui_practice/views/screens/screen_text_form_field.dart';
import 'package:batch_five_ui_practice/views/screens/states_of_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ScreenTest(),
      // home: ScreenPractice(),
      // home: TextFormFieldScreen(),
      // home: ScreenExpandedWidget(),
      home: ScreenLogin(),
      // home: ScreenImpConcepts(),
    );

  }
}
