import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/event_model.dart';

class event_element extends StatefulWidget {
  final event_model event_mod;
  event_element({Key key, this.event_mod}) : super(key: key);

  @override
  _event_elementState createState() => _event_elementState();
}

class _event_elementState extends State<event_element> {
  event_model model;
  @override
  void initState() {
    model = widget.event_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
        margin: EdgeInsets.only(bottom: ww / 55),
        height: hh / 6,
        width: ww * 0.9,
        child: Card(
          elevation: 8,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ww / 50)),
          child: Container(
            height: hh / 7,
            width: ww * 0.7,
            color: Colors.white,

            // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
            padding: EdgeInsets.only(right: 5),
            child: Stack(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/detail');
                  setState(() {});
                },
              ),
//              Positioned(
//                top: 0,
//                right: 0,
//                child: Container(
//                    margin: EdgeInsets.only(left: 60),
//                    child: IconButton(
//                        icon: Icon(
//                          model.isliked
//                              ? Icons.favorite
//                              : Icons.favorite_border,
//                          color: model.isliked ? Colors.red : Colors.grey,
//                        ),
//                        onPressed: () {
//                          setState(() {
//                            model.isliked = !model.isliked;
//                          });
//                        })),
//              ),
              Positioned(
                left: 0,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
//                  Positioned(right: 0, top: 0, child: Text("5 min ago")),

                      Container(
                        height: hh / 4.6,
                        width: ww * 0.25,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            model.bgImg,
                          ),
                        ),
                      ),
                      Container(
                        height: hh / 8,
                        width: ww * .4,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: hh * 0.02,
                              child: Text(
                                model.ttl,
                                style: TextStyle(
                                    fontSize: ww / 30,
                                    fontWeight: FontWeight.w600),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              model.description,
                              style: TextStyle(
                                  fontSize: ww / 45,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Container(
                              height: ww / 35,
                              margin: EdgeInsets.only(top: 2),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    model.date,
                                    style: TextStyle(
                                        fontSize: ww / 40,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text(
                                      model.time,
                                      style: TextStyle(
                                          fontSize: ww / 40,
                                          fontWeight: FontWeight.w700),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  model.location,
                                  style: TextStyle(
                                      fontSize: ww / 40,
                                      fontWeight: FontWeight.w800),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Rate:',
                                    style: TextStyle(
                                        fontSize: ww / 45,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      model.rate,
                                      style: TextStyle(
                                          fontSize: ww / 30,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w600),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: hh * 0.18,
                        width: ww * 0.2,
                        padding: EdgeInsets.only(top: ww / 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              semanticContainer: true,
                              elevation: 0,
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
                                  width: ww / 12,
                                  height: ww / 12,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(model.image),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  //alignment: Alignment.centerRight,
//                                  margin: EdgeInsets.only(
//                                    top: ww / 20,
//                                  ),
                                  child: Text(
                                    model.name,
                                    style: new TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: ww / 45),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  //alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(
                                    top: ww / 120,
                                  ),
                                  child: Text(
                                    model.residence,
                                    maxLines: 2,
                                    style: new TextStyle(
                                        fontSize: ww / 48,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              )
            ]),
          ),
        ));
  }
}
