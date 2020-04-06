import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/components/dart/blog_element.dart';
import 'package:flutterapp/components/dart/event_element.dart';
import 'package:flutterapp/components/dart/forum_element.dart';
import 'package:flutterapp/components/dart/group_element.dart';
import 'package:flutterapp/components/dart/post_element.dart';
import 'package:flutterapp/components/dart/product_element.dart';
import 'package:flutterapp/model/data.dart';
import 'package:flutterapp/pages/profile.dart';

//This is the feed widget
//It implements up to 5 different horizontal scroll lists

class feed extends StatefulWidget {
  @override
  _feedState createState() => _feedState();
}

class _feedState extends State<feed> {
  // static bool showFab1 = false;

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: new Column(children: <Widget>[
          Container(
            height: hh * 0.6,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.postList
                  .map((post) => post_element(
                        post_mod: post,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: hh * 0.32,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.productList
                  .map((prod) => product_element(
                        product_mod: prod,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: hh * 0.35,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.blogList
                  .map((blog) => blog_element(
                        blog_mod: blog,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: hh * 0.6,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.groupList
                  .map((grp) => group_element(
                        group_mod: grp,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: hh / 6,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.eventList
                  .map((eve) => event_element(
                        event_mod: eve,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: hh / 6,
            margin: EdgeInsets.only(top: ww / 60, left: ww / 50),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AppData.forumList
                  .map((forum) => forum_element(
                        forum_mod: forum,
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
                  heroTag: "btn1",
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
                  heroTag: "btn2",
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
                  heroTag: "btn3",
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
