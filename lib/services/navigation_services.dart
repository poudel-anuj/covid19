import 'package:animations/animations.dart';
import 'package:covid19/views/about_me.dart';
import 'package:covid19/views/homepage.dart';
import 'package:flutter/material.dart';



class NavigationScreen extends StatefulWidget {

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _pageIndex = 0;
  List<Widget> pageList = <Widget>[
HomePage(),
AboutMe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_pageIndex],
      // body: PageTransitionSwitcher(
      //   transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
      //       FadeThroughTransition(
      //     animation: primaryAnimation,
      //     secondaryAnimation: secondaryAnimation,
      //     child: child,
      //   ),
      //   child: pageList[_pageIndex],
      // ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        backgroundColor: Color(0xFF000000),
        selectedItemColor: Color(0xFF4CA2F6), //label color
        selectedIconTheme: IconThemeData(color: Color(0xFF4CA2F6)),
        unselectedItemColor: Color(0xFFFFFFFF),
        showUnselectedLabels: true,
        selectedFontSize: 18.0,
        unselectedFontSize: 18.0,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w500
        ),


        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.coronavirus_rounded),label: 'Covid'),
         // BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person
             
              ), label: 'About me'),
        ],
      ),
    );
  }
}
