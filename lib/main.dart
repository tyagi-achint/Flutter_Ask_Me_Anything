import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF03A9F4),
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask me Anything',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Color(0xFF1976D2),
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  @override
  var ball = 1;
  void changeBall() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: TextButton(
            onPressed: () => {changeBall()},
            child: Image.asset('images/ball$ball.png'),
          ),
        ),
      ),
    );
  }
}
