import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';
import 'dice_counter.dart';

final counter = Counter();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DiceCount(),
    );
  }
}

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobx Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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

// Debugs/Mistakes
// ontap: () => roll()
// ontap: roll
// using a name for two different variables
//add obx/observer always
