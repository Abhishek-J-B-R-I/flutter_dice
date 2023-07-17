import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Center(child: Text('Dicee ')),
        backgroundColor: Colors.grey.shade900,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicen = 6;
  int rightdicen = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftdicen = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftdicen.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightdicen = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightdicen.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
