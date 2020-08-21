import 'package:flutter/material.dart';
import 'package:dollapp/models/ItemDetails.dart';

class MyItems extends ChangeNotifier {
  List<ItemDetails> selectedItems = [];
  int get getSelectedItemIndex {
    return selectedItems.length;
  }

  double getTotalCost() {
    double money = 0;
    for (ItemDetails item in selectedItems) {
      money = money + item.itemPrice;
    }
    return money;
  }

  List<ItemDetails> unselectedItems = [
    ItemDetails('Toss Detergent', 22.5),
    ItemDetails('Blueband Butter', 120.5),
    ItemDetails('Baby toy', 20.5),
    ItemDetails('Salt shaker', 30),
    ItemDetails('32 inch TV set', 15000),
  ];
  void addToTray(String name, double price) {
    selectedItems.add(ItemDetails(name, price));
    notifyListeners();
  }

  void addToHomeList(String name, double price) {
    unselectedItems.add(ItemDetails(name, price));
    notifyListeners();
  }

  void removeFromHomeList(int index) {
    unselectedItems.removeAt(index);
    notifyListeners();
  }
}
