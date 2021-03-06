import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class thread extends StatefulWidget {
  @override
  _threadState createState() => _threadState();
}

class _threadState extends State<thread> {
  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Container(
            height: hh / 2.1,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: hh / 8,
                    width: ww * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      maxLength: 600,
                      autofocus: true,
                      autocorrect: true,
                      decoration: InputDecoration(
                          counterText: '',
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Title'),
                    ),
                  ),
                  Container(
                    height: hh / 2.6,
                    width: ww * 0.6,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      maxLength: 600,
                      autofocus: true,
                      autocorrect: true,
                      decoration: InputDecoration(
                          counterText: '',
                          fillColor: Colors.grey[100],
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Start Discussion'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: ww / 12,
            width: ww * 0.4,
            margin: EdgeInsets.only(
              top: ww / 40,
            ),
            child: Container(
              height: ww / 8,
              width: ww / 4,
              child: RaisedButton(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.blue[900],
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    new Icon(
                      FeatherIcons.zap,
                      color: Colors.white,
                      size: ww / 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Start thread',
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: ww / 30,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
