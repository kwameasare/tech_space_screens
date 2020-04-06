import 'package:flutter/material.dart';
import 'package:flutterapp/pages/forum.dart';
import 'package:flutterapp/pages/groups.dart';
import 'pages/market.dart';
import 'pages/feed.dart';
import 'pages/posts.dart';
import 'pages/events.dart';


//Main widget container for Tech-space
//it implements a tab navigation



class space extends StatefulWidget {
  @override
  _spaceState createState() => _spaceState();
}

bool showFab = true;

class _spaceState extends State<space> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, initialIndex: 0, length: 6);
    tabController.addListener(() {

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(hh * .12),
        child: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.redAccent,
          bottom: TabBar(
            isScrollable: true,
            controller: tabController,
            labelColor: Colors.redAccent,

            unselectedLabelColor: Colors.white,
//          indicatorWeight: 12,
//          indicatorColor: Colors.redAccent,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                color: Colors.white),
            tabs: [
              new Container(
                  width: ww / 5, height: ww / 12, child: new Tab(text: "Feed")),
              new Container(
                  width: ww / 5,
                  height: ww / 12,
                  child: new Tab(text: "Posts")),
              new Container(
                  width: ww / 5,
                  height: ww / 12,
                  child: new Tab(text: "Events")),
              new Container(
                  width: ww / 5,
                  height: ww / 12,
                  child: new Tab(text: "Market")),
              new Container(
                  width: ww / 5,
                  height: ww / 12,
                  child: new Tab(text: "Groups")),
              new Container(
                  width: ww / 5,
                  height: ww / 12,
                  child: new Tab(text: "Forums")),
            ],
          ),
        ),
      ),
      body: TabBarView(                                              // All tab pages are initiated here
        physics: new NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          feed(),
          posts(),
          events(),
          market(),
          groups(),
          forum(),
        ],

//        child: Container(
//          height: 200,
//          width: 300,
//          decoration: BoxDecoration(
//              borderRadius: new BorderRadius.all(const Radius.circular(15.0)),
//              color: Colors.amber[700],
//              boxShadow:[BoxShadow(
//                  blurRadius: 20,
//                  spreadRadius: 5.0, // has the effect of extending the shadow
//                  offset: Offset(
//                    5.0,  // horizontal, move right 10
//                    10.0, // vertical, move down 10
//                  ),
//                  color: Colors.black38
//
//              )] ,
//              gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [ Color(0xFF0099F7)  , Color(0xFFF11712)]),
//              shape: BoxShape.rectangle
//
//          ),
//
//        ),
      ),
    );
  }
}
