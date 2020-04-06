import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/blog_model.dart';

class blog_element extends StatefulWidget {
  final blog_model blog_mod;
  blog_element({Key key, this.blog_mod}) : super(key: key);

  @override
  _blog_elementState createState() => _blog_elementState();
}

class _blog_elementState extends State<blog_element> {
  blog_model model;
  @override
  void initState() {
    model = widget.blog_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: ww / 50, left: ww / 70),
      height: hh * 0.35,
      width: ww * 0.45,
      child: Card(
        margin: EdgeInsets.only(left: 0, right: 0),
        elevation: 4,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 60)),
        child: Container(
            height: hh * 0.2,
            width: ww * 0.35,
            color: Colors.white,

            // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
            padding: EdgeInsets.symmetric(vertical: 2),
            child: Stack(children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/detail');
                  setState(() {});
                },
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
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
              Column(crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
//                  Positioned(right: 0, top: 0, child: Text("5 min ago")),

                    Container(
                      height: hh * 0.03,
                      width: ww * 3,
                      margin: EdgeInsets.only(left: ww / 30),
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: AutoSizeText(
                        model.ttl,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                        minFontSize: 10,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    Container(
                        height: hh * 0.19,
                        width: ww * 0.45,
                        child: Stack(children: <Widget>[
                          Container(
                            height: hh * 0.2,
                            width: ww * 0.45,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                model.bgImg,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              padding:
                                  EdgeInsets.symmetric(horizontal: ww / 60),
                              child: Text(
                                model.status,
                                style: TextStyle(
                                    fontSize: ww / 60,
                                    color: Colors.white,
                                    backgroundColor: Color(0xcc000000)),
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ])),

                    Container(
                      height: hh * 0.04,
                      width: ww * 0.35,
                      margin: EdgeInsets.only(left: ww / 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Card(
                            semanticContainer: true,
                            elevation: 0,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            borderOnForeground: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ww / 6)),
                            child: InkWell(
                              splashColor: Colors.blue.withAlpha(30),
                              onTap: () {
                                print('Card tapped.');
                              },
                              child: Container(
                                width: ww / 16,
                                height: ww / 16,
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage(model.image),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 40,
                                ),
                                child: Text(
                                  model.name,
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ww / 66),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 150,
                                ),
                                child: Text(
                                  model.residence,
                                  style: new TextStyle(fontSize: ww / 80),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
            ])),
      ),
    );
  }
}
