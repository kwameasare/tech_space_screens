import 'dart:io';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> {
  Future<File> imageFile1;
  Future<File> imageFile2;
  Future<File> imageFile3;
  Future<File> imageFile4;
  int img1 = 0;
  int img2 = 0;
  int img3 = 0;
  int img4 = 0;

  //Open gallery
  pickImageFromGallery(ImageSource source) {
    setState(() {
      imageFile1 = ImagePicker.pickImage(source: source);
      img1 = 1;
    });
  }

  pickImage2FromGallery(ImageSource source) {
    setState(() {
      imageFile2 = ImagePicker.pickImage(source: source);
      img2 = 1;
    });
  }

  pickImage3FromGallery(ImageSource source) {
    setState(() {
      imageFile3 = ImagePicker.pickImage(source: source);
      img3 = 1;
    });
  }

  pickImage4FromGallery(ImageSource source) {
    setState(() {
      imageFile4 = ImagePicker.pickImage(source: source);
      img4 == 1;
    });
  }

  Widget showImage1() {
    return FutureBuilder<File>(
      future: imageFile1,
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

  Widget showImage2() {
    return FutureBuilder<File>(
      future: imageFile2,
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

  Widget showImage3() {
    return FutureBuilder<File>(
      future: imageFile3,
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

  Widget showImage4() {
    return FutureBuilder<File>(
      future: imageFile4,
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
        height: hh / 2,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: ww / 6,
                      height: ww / 6,
                      child: showImage1(),
                    ),
                    Container(
                      width: ww / 6,
                      height: ww / 6,
                      child: showImage2(),
                    ),
                    Container(
                      width: ww / 6,
                      height: ww / 6,
                      child: showImage3(),
                    ),
                    Container(
                      width: ww / 6,
                      height: ww / 6,
                      child: showImage4(),
                    ),
                  ],
                ),
                Container(
                  height: hh / 2.6,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
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
                                if (img1 == 0) {
                                  pickImageFromGallery(ImageSource.gallery);
                                } else if (img1 == 1 && img2 == 0) {
                                  pickImage2FromGallery(ImageSource.gallery);
                                } else if (img1 == 1 &&
                                    img2 == 1 &&
                                    img3 == 0) {
                                  pickImage3FromGallery(ImageSource.gallery);
                                } else if (img1 == 1 &&
                                    img2 == 1 &&
                                    img3 == 1 &&
                                    img4 == 0) {
                                  pickImage4FromGallery(ImageSource.gallery);
                                } else {}
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
                    top: ww / 12,
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
