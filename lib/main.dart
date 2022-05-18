import 'package:flutter/material.dart';
import 'package:loginpage/page2/page2screen.dart';
import 'package:loginpage/page3/alert.dart';
//import 'package:loginpage/screens/login/login_screen.dart';
//import 'package:loginpage/screens/login/welcome.dart';

import 'loginpage/login/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // setUsername("rand");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
            labelColor: Color(0xff6a515e),
            labelStyle: TextStyle(color: Color(0xff6a515e)), // color for text
            indicator: UnderlineTabIndicator(), //color for indicator (underline)
            //borderSide: BorderSide(color: Color(0xff6a515e))
        ),



        primaryColor: Color(0xff6a515e),
        cursorColor:  Color(0xff6a515e),
      ),

      home: welcomescreen(),
    );
  }
}

