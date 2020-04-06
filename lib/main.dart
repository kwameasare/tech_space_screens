import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutterapp/initialSetUp.dart';
import 'package:flutterapp/login/loginPage.dart';

//This is the Main  page of the Application.
//

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp()); //This method runs the application when launched.
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(
        Colors.red); //Application-wide status bar color is set here.
    SystemChrome.setPreferredOrientations([
      // Application set only to Display portrait mode
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return new MaterialApp(
      title: "Message",
      theme: new ThemeData(
        fontFamily: 'Heebo',
        primaryColor: new Color(0xfff3f3f3),
        accentColor: new Color(0xff6A0058),
      ),
      debugShowCheckedModeBanner: false,
      home: new intialSetUp(), //Default display page set here
    );
  }
}
