
import 'package:flutter/material.dart';
import 'package:nike_fltr/Pages/MainScreen.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final MainScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 450,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 110,
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            bottomLeft: const Radius.circular(40.0),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: -70,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: 6,
                                  child: Image.asset(
                                    'assets/nike_shoe.png',
                                    width: 280,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Nike Joyride Flyknit",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 265,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border:
                                        Border.all(color: Colors.grey[200]),
                                  ),
                                  child: Text(
                                    "Men's Running Shoe ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: -25,
                          left: 200,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey[200]),
                                color: Colors.red[200]),
                            child: Icon(
                              Icons.shopping_basket,
                              color: Colors.white,
                            ),
                            width: 50,
                            height: 50,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 200,
                width: 300,
                child: ListView.builder(
                    itemCount: widget.shoes.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(5)),
                              color: Colors.red[50],
                            ),
                            child: Image.asset(widget.shoes[index].img)),
                        title: Text(
                          widget.shoes[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(widget.shoes[index].description),
                      );
                    }),
              ),
            )
          ],
        )
      ],
    );
  }
}
