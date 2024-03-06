import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  var child;
  Textbox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        child: child,
        height: 56,
        width: screensize.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2)),
      ),
    );
  }
}
