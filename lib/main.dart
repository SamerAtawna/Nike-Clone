import 'package:flutter/material.dart';
import 'package:nike_fltr/Classes/shoe.dart';
import 'package:nike_fltr/Pages/DrawerScreen.dart';

import 'Pages/MainScreen.dart';
import 'Widgets/TopBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Shoe> shoes = [
    Shoe("Nike Air Zoom Winflo 6", "Men's Tennis Shoe",
        "assets/shoes_list_1.png"),
    Shoe("Nike Joyride Run  Flyknit", "Men's Running Shoe",
        "assets/shoes_list_2.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DrawerScreen(),
        MainScreen(shoes: shoes),
      ],
    );
  }
}
