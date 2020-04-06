import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';

import 'package:flutterapp/login/personalDetails.dart';
import 'package:flutterapp/login/pgctl.dart';
import 'package:random_color/random_color.dart';

class interest_picker extends StatefulWidget {
  @override
  _interest_pickerState createState() => new _interest_pickerState();
}

class _interest_pickerState extends State<interest_picker> {
  static List<int_model> intList = [];
  AutoCompleteTextField searchTextField;
  RandomColor _randomColor = RandomColor();
  bool _visibility = false;

  GlobalKey<AutoCompleteTextFieldState<int_model>> key = new GlobalKey();
  bool loading = false;
  static List<int_model> allintList = [
    int_model(name: 'Kyle Walker'),
    int_model(name: 'Freddie Fred'),
    int_model(name: 'Franklin'),
    int_model(name: 'Michael Jackson'),
    int_model(
      name: 'Enock Sanders',
    )
  ];
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            _selected(intList),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                loading
                    ? Container(
                        width: ww * .9, child: CircularProgressIndicator())
                    : searchTextField = AutoCompleteTextField<int_model>(
                        key: key,
                        clearOnSubmit: false,
                        suggestions: allintList,
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
                          hintText: "Search Fields",
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        itemFilter: (item, query) {
                          return item.name
                              .toLowerCase()
                              .startsWith(query.toLowerCase());
                        },
                        itemSorter: (a, b) {
                          return a.name.compareTo(b.name);
                        },
                        itemSubmitted: (item) {
                          setState(() {
                            intList.add(item);
                            searchTextField.textField.controller.text = '';
                            if (intList.length > 4) {
                              _visibility = true;
                            }
                          });
                        },
                        itemBuilder: (context, item) {
                          // ui for the autocomplete row
                          return row(item);
                        },
                      ),
              ],
            ),
            Visibility(
              visible: _visibility,
              child: Container(
                margin: EdgeInsets.only(top: hh / 12),
                padding: EdgeInsets.only(bottom: 25),
                child: InkWell(
                  onTap: () {
                    Pgctl.pageController.jumpToPage(2);
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
                      'Continue',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget row(int_model mod) {
    return Card(
      child: ListTile(
        title: Text(mod.name),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }

  Iterable<Widget> get interestWidgets sync* {
    for (int_model interest in intList) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: Chip(
          backgroundColor:
              _randomColor.randomColor(colorBrightness: ColorBrightness.light),
          deleteIcon: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
          label: Text(interest.name),
          onDeleted: () {
            setState(() {
              intList.removeWhere((int_model entry) {
                return entry.name == interest.name;
              });
            });

            if (intList.length < 5) {
              _visibility = false;
            }
          },
        ),
      );
    }
  }

  Widget _selected(List<int_model> interests) {
    double hh = MediaQuery.of(context).size.height;
    return StatefulBuilder(
      builder: (context, StateSetter setState) => Container(
        margin: EdgeInsets.only(top: hh / 12),
        height: hh * 0.3,
        child: Wrap(children: interestWidgets.toList()),
      ),
    );
  }
}

class int_model {
  String name;

  int_model({
    this.name,
  });
}
