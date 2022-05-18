import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/Doctor/drawerScreendoctor.dart';
import 'package:loginpage/Doctor/homeScreendoctor.dart';

class DoctorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen()

        ],
      ),

    );
  }
}
