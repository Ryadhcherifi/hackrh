import 'package:flutter/material.dart';
import 'package:hackrh/screens/HomeScreen.dart';
import 'package:hackrh/screens/PauseScreen.dart';
import 'package:hackrh/screens/Pausepage.dart';
import 'package:hackrh/screens/Taskpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage(), theme: ThemeData());
  }
}
