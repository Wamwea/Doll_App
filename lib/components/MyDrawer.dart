import 'package:dollapp/components/ItemTile.dart';
import 'package:flutter/material.dart';
import 'package:dollapp/models/MyItems.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<MyItems>(
        builder: (context, myItems, child) {
          return ListView.builder(
              itemCount: myItems.getSelectedItemIndex,
              itemBuilder: (context, index) {
                return ItemTile(
                    itemName: myItems.selectedItems[index].itemName,
                    itemPrice: myItems.selectedItems[index].itemPrice);
              });
        },
      ),
    );
  }
}
//ListView.builder(
//itemCount: myItems.selectedItems.length,
//itemBuilder: (context, index) {
//return myItems.selectedItems[index];
//});
