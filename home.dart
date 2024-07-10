import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  List<String> words = ['one', 'two', 'three', 'four', 'five', 'six'];
  String randomWord = '';

  void rollDice() {
    setState(() {
      randomWord = selectRandomWord(words);
    });
  }

  String selectRandomWord(List<String> words) {
    Random random = Random();
    int randomIndex = random.nextInt(words.length);
    return words[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Тапшырма 5")),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: rollDice,
                    child: Image.asset('images/dice-six-faces-$randomWord.png'),
                  ),
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset('images/dice-six-faces-two.png'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
