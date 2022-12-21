import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  //const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 1;
  int rightDicenumber = 1;

  void change() {
    leftDicenumber = Random().nextInt(6) + 1;
    rightDicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //Text("data"),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                  print("Dice = $leftDicenumber");
                });
                //print("Pressed");
              },
              child: Image.asset('images/dice$leftDicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                  print("Dice = $rightDicenumber");
                });
                //print("Pressed 2");
              },
              child: Image.asset('images/dice$rightDicenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
