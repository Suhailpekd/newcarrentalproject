import 'package:flutter/material.dart';
import 'package:newapptest/classes/button.dart';
import 'package:newapptest/classes/textbox.dart';
import 'package:shimmer/shimmer.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: ListView(children: [
        SizedBox(
            height: screensize.height / 4,
            width: screensize.width,
            child: Image.asset("asset/newcreated.png")),
        Padding(
          padding: EdgeInsets.only(top: screensize.height / 20),
          child: Textbox(
              child: TextFormField(
            decoration: InputDecoration(border: InputBorder.none),
          )),
        ),
        Textbox(
          child: TextFormField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ),
        Button(
          child: Shimmer(
            gradient:
                RadialGradient(colors: [Colors.transparent, Colors.white]),
            child: Center(
                child: Text("Let's Go",
                    style: TextStyle(color: Colors.white, fontSize: 19))),
          ),
        ),
        SizedBox(
          width: screensize.width / 1.4,
          height: screensize.height / 8,
          child: Image.asset("asset/carlocation.png"),
        )
      ]),
    );
  }
}
