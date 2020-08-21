import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/HomeScreen.dart';
import 'models/MyItems.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyItems(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
