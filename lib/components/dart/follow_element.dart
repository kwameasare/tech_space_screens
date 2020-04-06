import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/login/quick_follow.dart';
import 'package:flutterapp/model/data.dart';
import 'package:flutterapp/model/follow_model.dart';

class follow_element extends StatefulWidget {
  final follow_model follow_mod;

  follow_element({Key key, this.follow_mod}) : super(key: key);

  @override
  _follow_elementState createState() => _follow_elementState();
}

class _follow_elementState extends State<follow_element>
    with AutomaticKeepAliveClientMixin {
  follow_model model;
  bool _visibility = false;
  bool _vis = true;
  @override
  void initState() {
    model = widget.follow_mod;
    super.initState();
  }

  Widget followme() {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Container(
      height: hh * .03,
      width: ww * .25,
      child: RaisedButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 30)),
        onPressed: () {
          AppData.followed.add(model.name);
          print(AppData.followed);

          setState(() {
            _vis = false;
            _visibility = true;
            if (AppData.followed.length > 4) {
              AppData.qvis = true;
              quick_follow.of(context).setState(() => AppData.qvis = true);
            }
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
            Text(
              'Follow',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Widget following() {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Container(
      height: hh * .03,
      width: ww * .25,
      child: RaisedButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 30)),
        onPressed: () {
          AppData.followed.removeWhere((String entry) {
            return entry == model.name;
          });

          setState(() {
            _visibility = false;
            _vis = true;
            if (AppData.followed.length < 5) {
              AppData.qvis = false;
              quick_follow.of(context).setState(() => AppData.qvis = false);
            }
          });

          print(AppData.followed);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
            Text(
              'Following',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    bool status = false;
    return Container(
        margin: EdgeInsets.only(
          bottom: ww / 20,
          left: ww / 50,
        ),
        alignment: Alignment.center,
        height: hh * 0.4,
        width: ww * 0.3,
        child: Card(
          margin: EdgeInsets.only(left: 0, right: 0),
          elevation: 7,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ww / 30)),
          child: Container(
            height: hh * 0.28,
            width: ww * 0.48,
            color: Colors.white,
            alignment: Alignment.center,

            // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
            padding: EdgeInsets.only(bottom: 10),
            child: Stack(children: <Widget>[
              Visibility(
                visible: _vis,
                child: Container(
                  height: hh * .26,
                  width: ww * .46,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[followme()]),
                ),
              ),
              Visibility(
                visible: _visibility,
                child: Container(
                  height: hh * .26,
                  width: ww * .46,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[following()]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          semanticContainer: true,
                          margin: EdgeInsets.only(top: hh / 40),
                          elevation: 0,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(ww / 3)),
                          child: InkWell(
                            onTap: () {
                              print('Card tapped.');
                            },
                            child: Container(
                              width: ww / 6,
                              height: ww / 6,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(model.image),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: hh * 0.1,
                          width: ww * 0.32,
                          margin: EdgeInsets.only(top: ww / 80),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 30,
                                ),
                                child: Text(
                                  model.name,
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ww / 45),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 120,
                                ),
                                child: Text(
                                  model.occ,
                                  style: new TextStyle(
                                      color: Colors.black, fontSize: ww / 45),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(
                                  top: ww / 100,
                                ),
                                child: Text(
                                  model.residence,
                                  style: new TextStyle(fontSize: ww / 48),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ],
              ),
            ]),
          ),
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
