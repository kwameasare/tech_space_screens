import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/inputui/event.dart';
import 'package:flutterapp/inputui/post.dart';
import 'package:flutterapp/inputui/product.dart';
import 'package:flutterapp/inputui/thread.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  static PageController _pageController;

  static final GlobalKey<_profileState> staticGlobalKey =
      new GlobalKey<_profileState>();

  @override
  _profileState createState() => _profileState();
}

class Item {
  const Item(this.name, this.icon, this.value);
  final String name;
  final Icon icon;
  final int value;
}

List<Item> users = <Item>[
  const Item(
      'Status',
      Icon(
        FeatherIcons.zap,
        color: Colors.redAccent,
        size: 18,
      ),
      1),
  const Item(
      'Event',
      Icon(
        FeatherIcons.calendar,
        color: Colors.redAccent,
        size: 18,
      ),
      2),
  const Item(
      'Product',
      Icon(
        FeatherIcons.package,
        color: Colors.redAccent,
        size: 18,
      ),
      3),
  const Item(
      'Thread',
      Icon(
        FeatherIcons.gitPullRequest,
        color: Colors.redAccent,
        size: 18,
      ),
      4),
];

class _profileState extends State<profile> {
  GlobalKey _viewKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    profile._pageController = PageController(initialPage: 0);
  }

  void _settingModalBottomSheet(context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
        builder: (BuildContext bc) {
          return Container(
            child: new Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: hh / 60, bottom: hh / 50),
                  height: hh / 120,
                  width: ww / 6,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                ),
                new ListTile(
                    leading: new Icon(Icons.exposure),
                    title: new Text('My item for the bottomsheet'),
                    onTap: () => {}),
                new ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text(
                      'From this distant vantage point, the earth might not be of any significant value'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: hh / 5.5,
            width: ww,
            child: Stack(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.zero,
                  elevation: 10,
                  shape: RoundedRectangleBorder(),
                  child: Container(
                    height: hh / 5.5,
                    width: ww,
                  ),
                ),
                Positioned(
                  right: ww / 100,
                  bottom: hh / 150,
                  child: Container(
                    // alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: ww / 60, right: 0),
                    child: InkWell(
                      onTap: () {
                        print('Follow tapped.');
                      },
                      splashColor: Colors.blue.withAlpha(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            '419k Followers',
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4491E3),
                                fontSize: ww / 27),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xff4491E3),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  color: Colors.redAccent,
                  height: hh / 14,
                  width: ww,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: ww / 16,
                  ),
                  height: hh / 5,
                  width: ww,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: -ww / 80,
                        right: 0,
                        child: IconButton(
                          icon: Icon(FeatherIcons.menu),
                          onPressed: () {
                            _settingModalBottomSheet(context);
                          },
                          color: Colors.white,
                          iconSize: hh / 40,
                        ),
                      ),
                      Positioned(
                        //alignment: Alignment.centerRight,
                        top: ww / 60,
                        left: ww / 3.6,
                        child: Text(
                          'My Extremel',
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ww / 29),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              margin:
                                  EdgeInsets.only(top: ww / 40, left: ww / 25),
                              semanticContainer: true,
                              elevation: 10,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              borderOnForeground: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(ww / 3)),
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {
                                  print('Card tapped.');
                                },
                                child: Container(
                                  width: ww / 5,
                                  height: ww / 5,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage('p2.jpg'),
                                  ),
                                ),
                              ),
                            ),
                            Container(
//                      alignment: Alignment.bottomLeft,
                              margin:
                                  EdgeInsets.only(top: ww / 60, left: ww / 30),
                              child: Text(
                                '@interstellar_travellerrrrrrrrrrrrrrrrrr',
                                style: new TextStyle(fontSize: ww / 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: ww / 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              //alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(
                                top: ww / 9,
                              ),
                              child: Text(
                                'My Extremely Very Long Occupation',
                                style: new TextStyle(fontSize: ww / 30),
                              ),
                            ),
                            Container(
                              //alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(
                                top: ww / 100,
                              ),
                              child: Text(
                                'New York, USA',
                                style: new TextStyle(fontSize: ww / 33),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: ww / 15),
            semanticContainer: true,
            elevation: 0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            borderOnForeground: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ww / 50)),

            child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {},
                child: Container(
                    // alignment: Alignment.bottomLeft,
                    height: hh / 7,
                    width: ww * 0.9,
                    color: Colors.grey[100],

                    //margin: EdgeInsets.only(bottom: ww / 25, left: ww / 28),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: ww / 40),
                          width: ww * .9,
                          height: hh / 5,
                          child: DropdownButton<Item>(
                            hint: Text("Select item"),
                            onChanged: (Item value) {
                              if (value.value == 1) {
                                dialog(hh, ww, post());
                              } else if (value.value == 2) {
                                dialog(hh, ww, event());
                              } else if (value.value == 3) {
                                dialog(hh, ww, product());
                              } else if (value.value == 4) {
                                dialog(hh, ww, thread());
                              } else {}

                              print(value.value);
                            },
                            items: users.map((Item user) {
                              return DropdownMenuItem<Item>(
                                value: user,
                                child: Row(
                                  children: <Widget>[
                                    user.icon,
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      user.name,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),
                        ),
//                        Stack(
//                          children: <Widget>[
//                            Container(
//                              height: hh / 30,
//                              color: Colors.grey[200],
//                            ),
//                            Container(
//                              margin: EdgeInsets.only(left: ww / 15),
//                              height: hh / 30,
//                              color: Colors.grey[200],
//                            ),
//                          ],
//                        ),
                      ],
                    ))),
//
          ),
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
          )
        ],
      ),
    );
  }

  dialog(double hh, double ww, StatefulWidget view) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: hh / 1.5,
            width: ww * 0.9,
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(child: view)),
          ),
        );
      },
    );
  }
}
