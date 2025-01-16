import 'package:flutter/material.dart';
import 'dart:async';
import 'package:jammes_food/view/user_view/login.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Navigate to HomeScreen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Replace with your target screen
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 300, 
          height: 300, 
          child: Image.asset('asset/image/logo.png'),
        ),
      ),
    );
  }
}
