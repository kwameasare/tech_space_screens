import 'package:flutter/material.dart';
import 'package:flutterapp/login/interest_picker.dart';
import 'package:flutterapp/login/personalDetails.dart';
import 'package:flutterapp/login/pgctl.dart';
import 'package:flutterapp/login/quick_follow.dart';
import 'package:flutterapp/model/data.dart';

import 'login/loginPage.dart';

class intialSetUp extends StatefulWidget {
  @override
  _intialSetUpState createState() => _intialSetUpState();
}

class _intialSetUpState extends State<intialSetUp> {
  //Page controller for  bottom navigation

  @override
  void initState() {
    super.initState();
    Pgctl.pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    Pgctl.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        //This view contains the Tech space, DWTA Site and General profile page.
        controller: Pgctl.pageController,
        physics:
            new NeverScrollableScrollPhysics(), //This line disables the swipe navigation functionality across pages.
        onPageChanged: (ind) {
          //setState(() => _selectedTabIndex = ind);
        },
        children: <Widget>[
          LoginPage(),
          interest_picker(),
          personalDetails(),
          quick_follow()
        ], //The 3 pages are added here.
      ),
    );
  }
}
