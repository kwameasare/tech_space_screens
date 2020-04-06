import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/group_model.dart';

class group_element extends StatefulWidget {
  final group_model group_mod;
  group_element({Key key, this.group_mod}) : super(key: key);

  @override
  _group_elementState createState() => _group_elementState();
}

class _group_elementState extends State<group_element> {
  group_model model;
  @override
  void initState() {
    model = widget.group_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: ww / 20, left: ww / 40),
      height: hh * 0.6,
      width: ww * 0.7,
      child: Card(
        margin: EdgeInsets.only(left: 0, right: 0),
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 30)),
        child: Container(
          height: hh * 0.4,
          width: ww * 0.7,
          color: Colors.white,

          // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Stack(children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/detail');
                setState(() {});
              },
            ),
            Positioned(
                right: 0,
                bottom: ww / 6,
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
            Container(
                height: hh * 0.4,
                width: ww * 0.7,
                child: Stack(children: <Widget>[
                  Container(
                    height: hh * 0.4,
                    width: ww * 0.7,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        model.bgImg,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.symmetric(
                          horizontal: ww / 60, vertical: ww / 30),
                      child: Text(
                        model.description,
                        style: TextStyle(
                            fontSize: ww / 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            backgroundColor: Color(0xcc000000)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ])),
            Container(
              height: hh * 0.06,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: ww / 2.4,
                    child: AutoSizeText(
                      model.group_name,
                      style: TextStyle(
                          fontSize: ww / 16, fontWeight: FontWeight.w600),
                      minFontSize: 12,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    child: Text(
                      model.category,
                      style: TextStyle(
                          fontSize: ww / 40, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: hh * 0.1,
                width: ww * 0.7,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: ww / 7.2,
                      width: ww / 8,
                      child: Column(
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
                                width: ww / 14,
                                height: ww / 14,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(model.image1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              top: ww / 100,
                            ),
                            child: Text(
                              model.name1,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ww / 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ww / 7.2,
                      width: ww / 8,
                      child: Column(
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
                                width: ww / 14,
                                height: ww / 14,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(model.image2),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              top: ww / 100,
                            ),
                            child: Text(
                              model.name2,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ww / 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ww / 7.2,
                      width: ww / 8,
                      child: Column(
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
                                width: ww / 14,
                                height: ww / 14,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(model.image3),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              top: ww / 100,
                            ),
                            child: Text(
                              model.name3,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ww / 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: ww / 7.2,
                      width: ww / 8,
                      child: Column(
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
                                width: ww / 14,
                                height: ww / 14,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(model.image4),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            //alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(
                              top: ww / 100,
                            ),
                            child: Text(
                              model.name4,
                              style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ww / 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
