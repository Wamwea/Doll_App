import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField({this.hintText, this.functionality});
  final String hintText;
  final Function functionality;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: TextField(
        onChanged: functionality,
        autofocus: true,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
