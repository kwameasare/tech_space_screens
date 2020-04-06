import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/forum_model.dart';

class forum_element extends StatefulWidget {
  final forum_model forum_mod;
  forum_element({Key key, this.forum_mod}) : super(key: key);

  @override
  _forum_elementState createState() => _forum_elementState();
}

class _forum_elementState extends State<forum_element> {
  forum_model model;
  @override
  void initState() {
    model = widget.forum_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: ww / 25, left: ww / 30, right: ww / 30),
      height: hh / 8,
      width: ww * 0.9,
      child: Card(
          margin: EdgeInsets.only(left: 0, right: 0),
          elevation: 8,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ww / 30)),
          child: Container(
            height: hh * 0.36,
            width: ww * 0.7,
            padding: EdgeInsets.all(10),
            color: Colors.white,

            // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),

            child: Stack(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/detail');
                  setState(() {});
                },
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                      icon: Icon(
                        model.isliked ? Icons.favorite : Icons.favorite_border,
                        color: model.isliked ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          model.isliked = !model.isliked;
                        });
                      })),
              Positioned(
                left: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
//                  Positioned(right: 0, top: 0, child: Text("5 min ago")),

                    Container(
                      height: hh / 8,
                      width: ww * .6,
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
                            model.body,
                            style: TextStyle(
                                fontSize: ww / 40,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: hh * 0.15,
                      width: ww * 0.2,
                      padding: EdgeInsets.only(top: ww / 60),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            semanticContainer: true,
                            elevation: 0,
                            margin: EdgeInsets.only(top: ww / 20),
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
                                      fontSize: ww / 42),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 100,
                                ),
                                child: Text(
                                  model.residence,
                                  style: new TextStyle(fontSize: ww / 42),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
