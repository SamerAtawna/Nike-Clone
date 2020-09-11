import 'package:flutter/material.dart';
import 'package:nike_fltr/Classes/shoe.dart';
import 'package:nike_fltr/Widgets/MainBody.dart';
import 'package:nike_fltr/Widgets/TopBar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key key,
    @required this.shoes,
  }) : super(key: key);

  final List<Shoe> shoes;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double x = 0;

  double y = 0;

  double scale = 1;

  bool isOpened = false;

  showDrawer() {
    setState(() {
      if (!this.isOpened) {
        x = 230;
        y = 150;
        scale = 0.6;
        this.isOpened = true;
      } else {
        x = 0;
        y = 0;
        scale = 1;
        this.isOpened = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      transform: Matrix4.translationValues(x, y, 0)
        ..scale(scale)
        ..rotateZ(isOpened ? -0.2 : 0),
      duration: Duration(milliseconds: 200),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: TopBar(showDrawer)),
        body: MainBody(widget: widget),
      ),
    );
  }
}
