import 'package:flutter/material.dart';
import "dart:math";


void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar:AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue[600], 
            title: Text("Ask Me Anyhting",
            style:TextStyle(
              fontSize: 25.0,
              color: Colors.white
            ),
            )
          ),
          body: MagicBall(),
        ),
      ),
    );


class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: 
          FlatButton(
            onPressed: (){

              setState(() {
                ballNumber = Random().nextInt(5)+ 1;
              });

            },
            child: Image.asset("images/ball$ballNumber.png")
            ),
          ),
        ],
        
      ),
    );
  }
}