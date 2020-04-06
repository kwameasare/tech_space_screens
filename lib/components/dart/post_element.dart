import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/post_model.dart';

class post_element extends StatefulWidget {
  final post_model post_mod;
  post_element({Key key, this.post_mod}) : super(key: key);

  @override
  _post_elementState createState() => _post_elementState();
}

class _post_elementState extends State<post_element> {
  post_model model;
  @override
  void initState() {
    model = widget.post_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: ww / 25, left: ww / 30),
      height: hh * 0.6,
      width: ww * 0.7,
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 30)),
        child: Container(
            height: hh * 0.4,
            width: ww * 0.6,
            color: Colors.white,

            // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
//                  Positioned(right: 0, top: 0, child: Text("5 min ago")),
                    Container(
                        height: hh * 0.3,
                        width: ww * 0.7,
                        child: AutoSizeText(
                          model.status,
                          style:
                              TextStyle(fontFamily: 'Heebo', fontSize: ww / 4),
                          minFontSize: 16,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                        )),

                    Container(
                      height: hh * 0.08,
                      width: ww * 0.7,
                      margin: EdgeInsets.only(top: ww / 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                width: ww / 10,
                                height: ww / 10,
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
                                  top: ww / 20,
                                ),
                                child: Text(
                                  model.name,
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ww / 33),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 100,
                                ),
                                child: Text(
                                  model.residence,
                                  style: new TextStyle(fontSize: ww / 37),
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
