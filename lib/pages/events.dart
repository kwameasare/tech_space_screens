import 'package:flutter/material.dart';
import 'package:flutterapp/components/dart/event_element.dart';
import 'package:flutterapp/model/data.dart';

class events extends StatefulWidget {
  @override
  _eventsState createState() => _eventsState();
}

class _eventsState extends State<events> {
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
            height: hh * 0.75,
            // margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
              children: AppData.eventList
                  .map((post) => event_element(
                        event_mod: post,
                      ))
                  .toList(),
            ),
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
