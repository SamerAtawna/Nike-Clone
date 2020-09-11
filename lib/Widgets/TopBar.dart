import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  Function showDrawer;
  TopBar(this.showDrawer);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: this.widget.showDrawer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[200]),
              ),
              width: 50,
              height: 50,
              child: Image.asset('assets/left_top.png'),
            ),
          ),
        ),
        title: Text(
          "WELCOME",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              fontSize: 15,
              color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/user.jpg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
