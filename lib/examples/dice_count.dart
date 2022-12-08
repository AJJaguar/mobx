import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_examples/dice_counter.dart';

final diceCounter = DiceCounter();

class DiceCount extends StatelessWidget {
  const DiceCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TAP THE DICE'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: diceCounter.roll,
                child: Observer(
                  builder: (_) => Image.asset(
                      'images/dice${diceCounter.left}.png',
                      color: Colors.yellow),
                ),
              ),
              InkWell(
                onTap: () {
                  diceCounter.roll();
                },
                child: Observer(
                  builder: (_) => Image.asset(
                      'images/dice${diceCounter.right}.png',
                      color: Colors.yellow),
                ),
              ),
            ],
          ),
          Observer(builder: (_) => Text('Total  ${diceCounter.total}'))
        ],
      ),
    );
  }
}
