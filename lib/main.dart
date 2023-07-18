import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceState = 1;
  int rightDiceState = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          dice("images/dice$leftDiceState.png"),
          dice("images/dice$rightDiceState.png")
        ],
      ),
    );
  }

  Widget dice(String image) {
    return Expanded(
      child: TextButton(
        child: Image.asset(image),
        onPressed: () {
          setState(() {
            leftDiceState = Random().nextInt(6) + 1;
            rightDiceState = Random().nextInt(6) + 1;
          });
        },
      ),
    );
  }
}