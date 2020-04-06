import 'package:flutter/material.dart';
import 'package:flutterapp/pages/profile.dart';
import 'package:flutterapp/site.dart';
import 'package:flutterapp/space.dart';

//This page is the Master page that initiates all ui except initial setup
// It implements the main app navigation - Bottom navigation

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 1;
  PageController _pageController; //Page controller for  bottom navigation

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double ww = MediaQuery.of(context).size.width;
    double hh = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,

      drawer: Drawer(
        //     Side menu(Drawer)
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Text(
                'Tech Space',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.all_inclusive),
              title: Text('Infinite Feature'),
            ),
            ListTile(
              leading: Icon(Icons.watch_later),
              title: Text('Infinite activity'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),

      body: SizedBox.expand(
        child: PageView(
          //This view contains the Tech space, DWTA Site and General profile page.
          controller: _pageController,
          physics:
              new NeverScrollableScrollPhysics(), //This line disables the swipe navigation functionality across pages.
          onPageChanged: (ind) {
            //setState(() => _selectedTabIndex = ind);
          },
          children: <Widget>[
            space(),
            site(),
            profile()
          ], //The 3 pages are added here.
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //Bottom navigation
        backgroundColor: Colors.blue,
        // key: _bottomNavigationKey,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            //This condition separates the menu button on the bottom navigation from the rest of the navigation behaviour.
//              setState(() => _currentIndex = _currentIndex);
//              final CurvedNavigationBarState navBarState =
//                  _bottomNavigationKey.currentState;
//              navBarState.setPage(index);
            _scaffoldKey.currentState
                .openDrawer(); //Menu click results in nothing but the opening of the drawer
          } else {
            setState(() => _currentIndex =
                index); //The behaviour of the rest of the navigation bar items are set here
            _pageController.jumpToPage(index - 1);
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Space'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web),
            title: Text('Dev'),
          ),
          BottomNavigationBarItem(
              title: Text('Profile'), icon: Icon(Icons.account_circle)),
        ],
      ),
//        Stack(children: <Widget>[
//          Container(
//            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height * 0.05,
//            alignment: Alignment.bottomCenter,
//            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
//          ),
//          Container(
//              height: MediaQuery.of(context).size.height * 0.05,
//              alignment: Alignment.bottomLeft,
//              child: Padding(
//                padding: const EdgeInsets.only(right: 15.0),
//                child: IconButton(
//                  color: Colors.blue,
//                  icon: Icon(Icons.menu),
//                  onPressed: () {},
//                ),
//              )),
//          Container(
//            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height * 0.0499,
//            child: Padding(
//              padding: const EdgeInsets.only(
//                  // right: 8,
//
//                  left: 80),
//            child: BottomNavyBar(
//                showElevation: false,
//                selectedIndex: _currentIndex,
//                onItemSelected: (index) {
//                  setState(() => _currentIndex = index);
//                  _pageController.jumpToPage(index);
//                },
//                items: <BottomNavyBarItem>[
//                  BottomNavyBarItem(
//                      title: Text('Space'),
//                      activeColor: Colors.redAccent,
//                      inactiveColor: Colors.grey,
//                      icon: Icon(Icons.home)),
//                  BottomNavyBarItem(
//                      title: Text('Dev'),
//                      activeColor: Colors.blue,
//                      inactiveColor: Colors.grey,
//                      icon: Icon(Icons.web)),
//                  BottomNavyBarItem(
//                      activeColor: Colors.blue,
//                      inactiveColor: Colors.grey,
//                      title: Text('Profile'),
//                      icon: Icon(Icons.account_circle)),
//                ],
//              ),
//            ),
//          ),
//        ]),
    );
  }
}
