import 'package:flutter/material.dart';
import 'package:flutterapp/components/dart/product_element.dart';
import 'package:flutterapp/model/data.dart';

class market extends StatefulWidget {
  @override
  _marketState createState() => _marketState();
}

class _marketState extends State<market> {
  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: new Column(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: ww / 25, left: ww / 25),
                width: ww / 8,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                      iconSize: ww / 30,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: ww / 25, left: ww / 25),
                height: hh / 45,
                child: Text(
                  'Today',
                  style:
                      TextStyle(fontSize: ww / 40, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: hh * 0.7,
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 5 / 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5),
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                children: AppData.productList
                    .map((product) => product_element(
                          product_mod: product,
                        ))
                    .toList()),
          ),
          Row(
            children: <Widget>[
              Container(
                height: hh / 50,
                margin: EdgeInsets.only(top: ww / 25, left: ww / 25),
                child: Text(
                  'Yesterday',
                  style:
                      TextStyle(fontSize: ww / 40, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: hh * 0.7,
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 5 / 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5),
                padding: EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                children: AppData.productList
                    .map((product) => product_element(
                          product_mod: product,
                        ))
                    .toList()),
          ),
        ]),
      ),
      floatingActionButton: Container(
        // margin: EdgeInsets.only(right: ww / 80),
        alignment: Alignment.bottomRight,
        width: ww / 13,
        height: ww / 3.5,
        child: Column(
          children: [
            Container(
                height: ww / 11,
                child:
                    //showFab1?
                    FloatingActionButton(
                  onPressed: () {},
                  child: Text('R'),
                  mini: true,
                )
                //: null,
                ),
            Container(
                height: ww / 11,
                child:
                    //showFab1?
                    FloatingActionButton(
                  onPressed: () {},
                  child: Text('I'),
                  mini: true,
                )
                //: null,
                ),
            Container(
                height: ww / 11,
                child:
                    //showFab1?
                    FloatingActionButton(
                  onPressed: () {},
                  child: Text('T'),
                  mini: true,
                )
                //: null,
                )
          ],
        ),
      ),
    );
  }
}
