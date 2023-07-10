import 'dart:async';
// import 'package:ecommerce_application/screens/bottom_navigation_bar_design.dart';
import 'package:flutter/material.dart';
import '../bottom_navigation_bar_design.dart';

class MySplashScreen extends StatefulWidget {

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => BottomNavigationBarDesign(
                  title: 'Smart deal',
                ))));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        color: Color(0xff0ca684),
        child: Center(
            child: Container(
              width: height * 0.3,
              height: height * 0.3,
              padding: EdgeInsets.all(width * 0.05),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(height * 0.15)),
              child: Image.asset("assets/images/mounir.png"),
            ))

      // FlutterLogo(size:Me]/|diaQuery.of(context).size.height)
    );
  }
}
