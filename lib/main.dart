import 'package:flutter/material.dart';
import 'dart:math';
void main (){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          title: Center(
              child: Text(
                'Dicee Two',
                style: TextStyle(
                  letterSpacing: 2.5,
                ),
              )),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: DicePage(),
      ),
    )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicNum = 1, rightDicNum = 2;
  void changeDicFace() {
    setState(() {
      leftDicNum = Random().nextInt(6) + 1;
      rightDicNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'CLICK ON THE DICE',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white54,
            letterSpacing: 2.5,
            fontFamily: 'Qahiri',

          ),
        ),
        SizedBox(
          width: 150,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Divider(
              thickness: 2,
              color: Colors.yellow.shade900,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDicFace();
                  },
                  child: Image.asset('images/dice$leftDicNum.png'),
                )),
            Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDicFace();
                  },
                  child: Image.asset('images/dice$rightDicNum.png'),
                )),
          ],
        )
      ],
    );
  }
}
