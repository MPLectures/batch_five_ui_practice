import 'package:batch_five_ui_practice/helpers/constants.dart';
import 'package:batch_five_ui_practice/views/screens/screen_singup.dart';
import 'package:flutter/material.dart';

import '../../widgets/text_field.dart';

class ScreenLogin extends StatefulWidget {
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool isHidden = true;
  IconData hiddenIcon = Icons.visibility;
  TextEditingController _emailController = TextEditingController();
  String? value;

  final _formKey = GlobalKey<FormState>();
  final pattern = RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff000000),
          size: 14,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "PR",
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Image.asset("assets/images/logo.png"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontFamily: "PR",
                        fontWeight: FontWeight.w200,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        hintText: 'Email',
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter password";
                          } else if (pattern.hasMatch(value)) {
                            return "Enter Valid Password";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    MyTextField(
                      hintText: "Password",
                      suffixIcon: Icons.visibility_outlined,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: "PR",
                          fontWeight: FontWeight.w200,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/signup');
                        }
                      },
                      child: Container(
                        height: 43,
                        width: 250,
                        decoration: BoxDecoration(
                          // color: AppColors.appColor,
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontFamily: "PR",
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: 70,
                            endIndent: 20,
                            thickness: 1.5,
                            height: 90,
                          ),
                        ),
                        Text("Or"),
                        Expanded(
                          child: Divider(
                            indent: 20,
                            endIndent: 70,
                            thickness: 1.5,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 43,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff365194),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/facebook.png"),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: "PR",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 43,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/images/gogle.png"),
                              Text(
                                "Google",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontFamily: "PR",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account  ",
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontFamily: "PR",
                    fontSize: 13,
                  ),
                ),
                VerticalDivider(
                  thickness: 1.5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ScreenSingUp()));
                  },
                  child: Hero(
                    tag: "first",
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        color: Color(0xffED1C24),
                        fontFamily: "PR",
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
