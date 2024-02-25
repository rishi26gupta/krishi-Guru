import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krishi_guru/introscreen.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var Name = TextEditingController();
  var Email = TextEditingController();
  var createpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.green.shade500,
              Colors.brown.shade500,
            ],
            begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.0, 1.0),
          )),
          child: Center(
            child: Container(
              width: 350,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SignUp',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.brown.shade800)),
                  SizedBox(height: 50),

                   Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown.shade100,
                      ),
                      child: TextField(
                        controller: Name,
                        decoration: InputDecoration(
                          label: Text('Name', style: TextStyle(fontSize: 20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown.shade100,
                      ),
                      child: TextField(
                        controller: Email,
                        decoration: InputDecoration(
                          label: Text('Email', style: TextStyle(fontSize: 20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.brown.shade100,
                    ),
                    child: TextField(
                      controller: createpassword,
                      decoration: InputDecoration(
                          label:
                              Text('Password', style: TextStyle(fontSize: 20)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IntroScreen(),
                          ));
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.brown.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
