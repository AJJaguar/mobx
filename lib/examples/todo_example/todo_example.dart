import 'package:flutter/material.dart';
import 'package:mobx_examples/examples/todo_example/widgets.dart';
import 'package:mobx_examples/todo_list.dart';
import 'package:provider/provider.dart';

class TodoExample extends StatelessWidget {
  const TodoExample({super.key});

  @override
  Widget build(BuildContext context) => Provider<TodoList>(
      create: (_) => TodoList(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Todos'),
          ),
          body: Column(
            children: [
              AddTodo(),
              const ActionBar(),
              const Description(),
              const TodoListView()
            ],
          )));
}
