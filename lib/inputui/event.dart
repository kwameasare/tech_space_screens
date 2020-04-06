import 'dart:io';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class event extends StatefulWidget {
  @override
  _eventState createState() => _eventState();
}

class _eventState extends State<event> {
  Future<File> imageFile;

  //Open gallery
  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Container(
        height: hh / 4,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: hh / 3.8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: ww / 6,
                          height: ww / 6,
                          child: showImage(),
                        ),
                        Container(
                          height: ww / 12,
                          width: ww * 0.4,
                          margin: EdgeInsets.only(
                            top: ww / 20,
                          ),
                          child: Container(
                            height: ww / 8,
                            width: ww / 4,
                            child: FlatButton(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              color: Colors.grey[200],
                              onPressed: () {
                                pickImageFromGallery(ImageSource.gallery);
                              },
                              child: Row(
                                children: <Widget>[
                                  new Icon(
                                    FeatherIcons.image,
                                    color: Colors.black,
                                    size: ww / 22,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Add Image',
                                      style: new TextStyle(
                                          color: Colors.black,
                                          fontSize: ww / 30,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: hh / 12,
                          width: ww * 0.6,
                          margin: EdgeInsets.only(
                            top: ww / 20,
                          ),
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            maxLength: 300,
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
                          height: hh / 12,
                          width: ww * 0.6,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            maxLength: 300,
                            autofocus: true,
                            autocorrect: true,
                            decoration: InputDecoration(
                                counterText: '',
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: InputBorder.none,
                                hintText: 'Description'),
                          ),
                        ),
                        Container(
                          height: hh / 12,
                          width: ww * 0.6,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            maxLength: 300,
                            autofocus: true,
                            autocorrect: true,
                            decoration: InputDecoration(
                                counterText: '',
                                fillColor: Colors.grey[100],
                                filled: true,
                                border: InputBorder.none,
                                hintText: 'Location'),
                          ),
                        ),
                        Container(
                          height: hh / 12,
                          width: ww * 0.6,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            maxLength: 300,
                            autofocus: true,
                            autocorrect: true,
                            decoration: InputDecoration(
                                counterText: '',
                                fillColor: Colors.grey[100],
                                filled: true,
                                border: InputBorder.none,
                                hintText: 'Rate'),
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
                    top: ww / 20,
                  ),
                  child: Container(
                    height: ww / 8,
                    width: ww / 4,
                    child: RaisedButton(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Colors.deepPurple,
                      onPressed: () {
                        FocusScopeNode currentFocus = FocusScope.of(context);

                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      },
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
                              'Post Event',
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
          ),
        ));
  }
}
