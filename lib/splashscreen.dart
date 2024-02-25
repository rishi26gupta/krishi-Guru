import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishi_guru/introscreen.dart';
import 'package:krishi_guru/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LogIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              // Colors.lightGreen,
              Colors.brown.shade800,
            ],
            begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  // color: Colors.amberAccent,

                  child: Image.asset(
                    'assets/images/2farmer.jpg',
                    height: 160,
                    width: 160,
                    fit: BoxFit.fill,
                  )),
              Text('Krishi Guru',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ),
    );
  }
}
