import 'package:flutter/material.dart';
import 'package:flutterapp/model/comment_model.dart';

class comment_element extends StatefulWidget {
  final comment_model comment_mod;
  comment_element({Key key, this.comment_mod}) : super(key: key);

  @override
  _comment_elementState createState() => _comment_elementState();
}

class _comment_elementState extends State<comment_element> {
  comment_model model;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(model.comment),
            leading: CircleAvatar(
              child: Image.asset(model.image),
            ),
          ),
          Visibility(
            visible: model.has_reply,
            child: ListTile(
              title: Text(model.comment),
              leading: CircleAvatar(
                child: Image.asset(model.image),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
