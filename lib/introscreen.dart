import 'package:flutter/material.dart';
import 'package:krishi_guru/ccpscreen.dart';
import 'package:krishi_guru/cpscreen.dart';
import 'package:krishi_guru/cypscreen.dart';

class IntroScreen extends StatefulWidget {
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade500,
              Colors.brown.shade500,
            ],
            begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.0, 1.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 80,
                width: double.infinity,
                // color: Colors.amberAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                      child: ClipRRect(
                        child: Image.asset('assets/images/rishi.jpg',
                            width: 56, height: 56, fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text('Hi,Rishi Gupta ',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w800)),
                  ],
                )),
            SizedBox(
              height: 31,
            ),
            InkWell(
              child: Container(
                width: 350,
                height: 185,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/cp1.jpg',
                        width: 350,
                        height: 185,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      " Crop Prediction",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CpScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 21,
            ),
            InkWell(
              child: Container(
                width: 350,
                height: 185,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'assets/images/cyp2.jpg',
                        width: 350,
                        height: 185,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      "  Crop Yield Prediction",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CypScreen(),
                    ));
              },
            ),
            SizedBox(
              height: 21,
            ),
            InkWell(
              child: Container(
                width: 350,
                height: 185,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset('assets/images/ccp3.jpg',
                            width: 350, height: 185, fit: BoxFit.fill)),
                    Text(
                      "  Crop cost Prediction",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CcpScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    ));
  }
}
