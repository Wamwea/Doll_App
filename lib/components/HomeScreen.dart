import 'package:dollapp/components/MyListView.dart';
import 'package:flutter/material.dart';
import 'package:dollapp/models/MyItems.dart';
import 'package:dollapp/components/AddItemMenu.dart';
import 'package:dollapp/components/MyDrawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  MyItems myItems = MyItems();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          hoverColor: Colors.teal.shade500,
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return AddItemMenu();
                });
          },
          backgroundColor: Colors.teal.shade800,
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          title: Consumer<MyItems>(
            builder: (context, myItems, child) {
              return Center(
                child: Text(
                  'Total Cost: ${myItems.getTotalCost()}',
                ),
              );
            },
          ),
        ),
        body: MyListView(),
        drawerEnableOpenDragGesture: false,
        drawer: MyDrawer(),
      ),
    );
  }
}
