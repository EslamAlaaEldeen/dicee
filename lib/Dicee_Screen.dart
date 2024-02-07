import 'dart:math';
import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DiceScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 80, 2, 38),
            Color.fromARGB(255, 84, 7, 98),
          ]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                'Dicee',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 220,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          changeDiceFace();
                        });
                      },
                      child: Image.asset(
                        'images/dice-$leftDiceNumber.png',
                      ),
                    ),
                  ),
                  //Get students to create the second die as a challenge
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          changeDiceFace();
                        });
                      },
                      child: Image.asset(
                        'images/dice-$rightDiceNumber.png',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
