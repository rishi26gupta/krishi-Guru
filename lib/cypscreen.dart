
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CypScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop yield Prediction using ML',
        style: TextStyle(color: Colors.brown.shade900), ),
        backgroundColor: Colors.green.shade500,
       //  color: Colors.brown,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            Colors.green.shade500,
            Colors.brown.shade500,
            
          ],
          begin: FractionalOffset(0.1, 0.1),
            end: FractionalOffset(0.0, 1.0),
          )
        ),
      
        child: Text('Find out the yield of your crop', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.brown.shade900,))
      ),

   );
  }

}