import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text('Ask me anything 😁'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: BallPage(),
    ),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 3;
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: TextButton

        (onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });

      },
        child:
      Image.asset('images/ball$ballNumber.png'),
      ),
    );;
  }
}

