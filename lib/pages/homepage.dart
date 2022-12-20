import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftButtonNumber = 1;
  var rightButtonNumber = 1;
  void changeNumber() {
    setState(() {
      var randomNumber = Random().nextInt(6) + 1;
      leftButtonNumber = randomNumber;
      rightButtonNumber = Random().nextInt(6) + 1;
    });
  }

  // void rightButtonChange() {
  //   setState(() {
  //     rightButtonNumber = Random().nextInt(6) + 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dice Game',
          style: TextStyle(fontFamily: "Montserrat", fontSize: 26),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: [
            // SizedBox(
            //   width: 30,
            //   height: 30,
            // ),
            Expanded(
              // flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    changeNumber();
                  },
                  child: Image(
                    image: AssetImage("images/dice$leftButtonNumber.png"),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 30,
            //   height: 30,
            // ),
            Expanded(
              // flex: 1,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    // rightButtonChange();
                    changeNumber();
                  },
                  child: Image(
                    image: AssetImage("images/dice$rightButtonNumber.png"),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   width: 30,
            //   height: 30,
            // ),
          ],
        ),
      ),
    );
  }
}
