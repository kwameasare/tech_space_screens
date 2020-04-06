import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/components/dart/follow_element.dart';
import 'package:flutterapp/home.dart';
import 'package:flutterapp/model/data.dart';

class quick_follow extends StatefulWidget {
  static _quick_followState of(BuildContext context) =>
      context.findAncestorStateOfType<_quick_followState>();

  @override
  _quick_followState createState() => _quick_followState();
}

class _quick_followState extends State<quick_follow> {
  follow_element follow;

//  @override
//  void initState() {
//    follow = follow_element(this.callback);
//  }
//
//  void callback(Widget nextPage) {
//    setState(() {
//      this.currentPage = nextPage;
//    });
//  }

  Widget current() {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    bool _visibility = false;
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: hh / 15),
                height: hh * .9,
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 5 / 3.5,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5),
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    children: AppData.followList
                        .map((follow) => follow_element(
                              follow_mod: follow,
                            ))
                        .toList()),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 20,
          child: Visibility(
            visible: AppData.qvis,
            child: Container(
              margin: EdgeInsets.only(top: hh / 12),
              padding: EdgeInsets.only(bottom: 25),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => new home()));
                  // Navigator.pop(context);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: MediaQuery.of(context).size.height * .04,
                  padding: EdgeInsets.symmetric(vertical: 2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey[400],
                            offset: Offset(2, 4),
                            blurRadius: 15,
                            spreadRadius: 2)
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.redAccent, Colors.red])),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: current());
  }
}
