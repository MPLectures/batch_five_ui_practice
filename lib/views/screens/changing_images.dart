import 'package:flutter/material.dart';

class ChangingImages extends StatefulWidget {
  const ChangingImages({super.key});

  @override
  State<ChangingImages> createState() => _ChangingImagesState();
}

class _ChangingImagesState extends State<ChangingImages> {
  String image = "assets/images/Mp3.png";
  bool value = true;
  String buttonText = "Logo with text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    value = !value;
                    if (value) {
                      image = "assets/images/Mp4.png";
                      buttonText = 'Logo with text';
                    } else {
                      image = "assets/images/Mp3.png";
                      buttonText = 'Logo without text';
                    }
                    // value
                    //     ? image = "assets/images/Mp4.png"
                    //     : image = "assets/images/Mp3.png";
                  });

                  print(value);
                  print(image);
                },
                child: Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
