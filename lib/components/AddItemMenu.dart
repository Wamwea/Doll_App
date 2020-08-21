import 'package:flutter/material.dart';
import 'package:dollapp/components/MyTextField.dart';
import 'package:dollapp/components/MyButton.dart';
import 'package:provider/provider.dart';
import 'package:dollapp/models/MyItems.dart';

class AddItemMenu extends StatelessWidget {
  String itemPrice;
  String itemName;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Color(0XFF00433C),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyTextField(
                hintText: 'Enter item name',
                functionality: (value) {
                  print(value);
                  itemName = value;
                },
              ),
              MyTextField(
                hintText: 'Enter item price',
                functionality: (value) {
                  itemPrice = value;
                },
              ),
              MyButton(
                title: 'Add Item',
                functionality: () {
                  print('Button pressed');
                  Provider.of<MyItems>(context, listen: false)
                      .addToHomeList(itemName, double.parse(itemPrice));
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
