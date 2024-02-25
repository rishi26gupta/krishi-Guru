import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krishi_guru/introscreen.dart';
import 'package:krishi_guru/signup.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var Email = TextEditingController();
  var password = TextEditingController();
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
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('LogIn',
                      style: TextStyle(
                          fontSize: 35,
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
                      controller: password,
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
                      'LogIn',
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.brown.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                      child: Text(
                    'New user? SignUp',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()),);
                  },)
                ],
              ),
            ),
          )),
    );
  }
}
