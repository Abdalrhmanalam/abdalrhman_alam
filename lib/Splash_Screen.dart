import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_application_5/PageView.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 8),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => PageViewDemo())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Splash Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: Text('Welcome to Home Page'),
        ),
        onDrawerChanged: (isOpened) {
          setState(() {
            PageViewDemo;
          });
          Text('asdfa');
        });
  }
}
