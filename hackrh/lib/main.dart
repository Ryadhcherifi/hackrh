import 'package:flutter/material.dart';
import 'package:hackrh/screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage(), theme: ThemeData());
  }
}
