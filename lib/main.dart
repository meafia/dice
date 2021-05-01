import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 1;
  void changeDice() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color(0xff1e2e35),
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 50,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeDice();
          },
          child: Text('Roll'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        backgroundColor: Color(0xff314651),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: Image.asset(
                  'images/dice$leftDiceNum.png',
                  width: 150,
                ),
              ),
              Flexible(
                child: Image.asset(
                  'images/dice$rightDiceNum.png',
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
