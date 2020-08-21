import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({this.title, this.functionality});
  final String title;
  final Function functionality;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: GestureDetector(
        onTap: functionality,
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          elevation: 6.5,
          color: Colors.blueGrey.shade900,
          child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10),
            child: Center(
                child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
