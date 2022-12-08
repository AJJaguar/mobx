import 'package:flutter/material.dart';
import 'package:mobx_examples/examples/todo_example/todo_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobx',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoExample(),
    );
  }
}
