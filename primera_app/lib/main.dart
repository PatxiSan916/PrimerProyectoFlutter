import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'primerProyecto',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Column(children: [
        ProgressBar(),
        ToDoList(),
      ]),
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Estatus de completación'),
        LinearProgressIndicator(
          value: 0.0,
        ),
      ],
    );
  }
}

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Task(label: 'Task'),
        Task(label: 'Task1'),
        Task(label: 'Task2'),
        Task(label: 'Task3'),
        Task(label: 'Task4'),
      ],
    );
  }
}

class Task extends StatelessWidget {
  final String label;

  const Task({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: null),
        Text(label)
      ],
    );
  }
}
