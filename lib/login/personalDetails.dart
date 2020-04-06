import 'package:flutter/material.dart';
import 'package:flutterapp/home.dart';
import 'package:flutterapp/login/pgctl.dart';
import 'package:flutterapp/login/quick_follow.dart';

class personalDetails extends StatefulWidget {
  personalDetails({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _personalDetailsState createState() => _personalDetailsState();
}

class _personalDetailsState extends State<personalDetails> {
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return new InkWell(
      onTap: () {
        Pgctl.pageController.jumpToPage(3);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        height: MediaQuery.of(context).size.height * .04,
        padding: EdgeInsets.symmetric(vertical: 2),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey[400],
                  offset: Offset(2, 4),
                  blurRadius: 15,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.redAccent, Colors.red])),
        child: Text(
          'All Done',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Tech',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.red,
          ),
          children: [
            TextSpan(
              text: 'Space',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("First Name"),
        _entryField("Last Name"),
        _entryField("Display Name"),
        _entryField("Country"),
        _entryField("City"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                _title(),
                SizedBox(
                  height: 50,
                ),
                _emailPasswordWidget(),
                SizedBox(
                  height: 20,
                ),
                _submitButton(),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
