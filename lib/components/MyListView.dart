import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dollapp/models/MyItems.dart';
import 'package:dollapp/components/ItemTile.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Consumer<MyItems>(
        builder: (context, myItems, child) {
          return ListView.builder(
              itemCount: myItems.unselectedItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () {
                    myItems.removeFromHomeList(index);
                  },
                  onTap: () {
                    myItems.addToTray(myItems.unselectedItems[index].itemName,
                        myItems.unselectedItems[index].itemPrice);
                    Scaffold.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 1, milliseconds: 50),
                        content: Text(
                            '${myItems.unselectedItems[index].itemName} has been added to the tray.')));
                  },
                  child: ItemTile(
                      itemName: myItems.unselectedItems[index].itemName,
                      itemPrice: myItems.unselectedItems[index].itemPrice),
                );
              });
        },
      ),
    );
  }
}
