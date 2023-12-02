import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  final _nameController = TextEditingController();

  // final _emailController = TextEditingController();
  String input = "Output";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              input,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: _nameController,
                // maxLength: 4,
                keyboardType: TextInputType.emailAddress,
                // obscureText: true,
                // obscuringCharacter: "#",
                decoration: InputDecoration(
                  // counter: SizedBox(),
                  hintText: "Enter your name",
                  // label: Text("Name"),
                  // helperText: "Enter your name",
                  // prefix: Icon(Icons.co_present_rounded),
                  prefixIcon: Icon(Icons.co_present_rounded),
                  // suffix: Icon(Icons.visibility),
                  suffixIcon: Icon(Icons.visibility),
                  filled: true,
                  fillColor: Colors.grey,

                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  input = _nameController.text;
                });
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
