import 'package:dollapp/components/ItemTile.dart';
import 'package:dollapp/models/ItemDetails.dart';
import 'package:flutter/material.dart';
import 'package:dollapp/models/MyItems.dart';
import 'package:provider/provider.dart';

class BoughtList extends StatelessWidget {
  List<Widget> addDrawerHeader(BuildContext context) {
    List<Widget> items = [];
    int x = 0;
    for (ItemDetails itemDetails
        in Provider.of<MyItems>(context).selectedItems) {
      items.add(ItemTile(
          itemName: Provider.of<MyItems>(context).selectedItems[x].itemName,
          itemPrice: Provider.of<MyItems>(context).selectedItems[x].itemPrice,
          quantity: Provider.of<MyItems>(context).selectedItems[x].quantity));
      x++;
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.teal.shade700,
            child: Consumer<MyItems>(builder: (context, myItems, child) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Cost:',
                        style: TextStyle(color: Colors.teal.shade900),
                      ),
                      Text(
                        'Sh ${myItems.getTotalCost()}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal.shade900),
                      )
                    ],
                  ));
            }),
          ),
          Expanded(
            child: Container(
              child: Consumer<MyItems>(
                builder: (context, myItems, child) {
                  return ListView(
                    children: addDrawerHeader(context),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
