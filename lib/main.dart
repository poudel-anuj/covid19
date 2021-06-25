import 'package:covid19/services/navigation_services.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFF0AE221),
        scaffoldBackgroundColor:Color(0xFF121212), // Color(0xFF95B9B7)
      ),
      home: NavigationScreen(),

    );
  }
}



