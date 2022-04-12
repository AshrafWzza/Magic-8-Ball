import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        changeBallNumber();
      },
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }
}
