import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dice')),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: const Dicepages(),
    ),
  ));
}

class Dicepages extends StatefulWidget {
  const Dicepages({Key? key}) : super(key: key);

  @override
  _DicepagesState createState() => _DicepagesState();
}

class _DicepagesState extends State<Dicepages> {
  int dice1 = 1;
  int dice2 = 1;

  void changeDiceFace() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
