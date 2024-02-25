
import 'package:flutter/material.dart';

class CpOutput extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
           Colors.green.shade500,
           Colors.brown.shade500,
        ],
        begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.0, 1.0),
        )
      ),
      child: Center(child: Text('Output :', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold), ))
      )
   );
  }
}
