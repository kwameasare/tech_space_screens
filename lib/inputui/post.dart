import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class post extends StatefulWidget {
  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
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
            height: hh / 3.6,
            width: ww * 0.6,
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              maxLength: 300,
              autofocus: true,
              autocorrect: true,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Say something'),
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
                color: Colors.deepPurple,
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
                        'quick post',
                        style: new TextStyle(
                            color: Colors.grey[400],
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
