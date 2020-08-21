import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  ItemTile(
      {@required this.itemName, @required this.itemPrice, this.onLongPress});
  final String itemName;
  final double itemPrice;
  final Function onLongPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        itemName,
        style: TextStyle(
            color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold),
      ),
      trailing: Text(
        'Sh. $itemPrice',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black),
      ),
    );
  }
}
