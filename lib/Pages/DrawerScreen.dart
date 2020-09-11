import 'package:flutter/material.dart';
import 'package:nike_fltr/Data/data.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

int selected = 0;

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xff1d1930);

    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/user.jpg'),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Hey",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Afshin T2Y",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 100),
            Container(
              height: 350,
              width: 180,
              child: ListView.builder(
                  itemCount: drawerList.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: i == selected ? 0.5 : 1,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: i == selected ? Colors.red : color,
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            onTap: () {
                              setSelected(i);
                            },
                            leading: drawerList[i]["icon"],
                            title: Text(
                              drawerList[i]["title"],
                              style: drawerSyle,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }

  setSelected(int i) {
    setState(() {
      selected = i;
    });
  }
}
