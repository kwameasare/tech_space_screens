import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/product_model.dart';

class product_element extends StatefulWidget {
  final product_model product_mod;
  product_element({Key key, this.product_mod}) : super(key: key);

  @override
  _product_elementState createState() => _product_elementState();
}

class _product_elementState extends State<product_element> {
  product_model model;
  @override
  void initState() {
    model = widget.product_mod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        bottom: ww / 20,
        left: ww / 50,
      ),
      height: hh * 0.45,
      width: ww * 0.38,
      child: Card(
        margin: EdgeInsets.only(left: 0, right: 0),
        elevation: 7,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ww / 30)),
        child: Container(
          height: hh * 0.4,
          width: ww * 0.25,
          color: Colors.white,

          // margin: EdgeInsets.symmetric(vertical: !model.isSelected ? 20 : 0),
          padding: EdgeInsets.only(bottom: 10),
          child: Stack(children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/detail');
                setState(() {});
              },
            ),
            Positioned(
                right: 0,
                bottom: ww / 15,
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
              children: <Widget>[
                Container(
                  height: hh * 0.16,
                  width: ww * 0.40,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      model.bgImg,
                    ),
                  ),
                ),
                Container(
                  height: hh * 0.12,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: ww / 25),
                        height: hh * 0.02,
                        child: Text(
                          model.product_name,
                          style: TextStyle(
                              fontSize: ww / 35, fontWeight: FontWeight.w600),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'GhC',
                            style: TextStyle(
                                fontSize: ww / 28,
                                fontStyle: FontStyle.italic,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            model.price.toString(),
                            style: TextStyle(
                                fontSize: ww / 28,
                                fontStyle: FontStyle.italic,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Container(
                        height: ww / 25,
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            Text(
                              model.condition,
                              style: TextStyle(
                                  fontSize: ww / 35,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: hh * 0.08,
                  width: ww * 0.32,
                  margin: EdgeInsets.only(top: ww / 40),
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
                            width: ww / 14,
                            height: ww / 14,
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
                              top: ww / 100,
                            ),
                            child: Text(
                              model.residence,
                              style: new TextStyle(fontSize: ww / 48),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
