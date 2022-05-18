import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:segunda_app/Views/TaskList.dart';
import 'package:segunda_app/bloc/bloctasklist_bloc.dart';
import 'package:segunda_app/bloc/counter_bloc.dart';

import 'Views/CounterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterBloc(),
          ),
          BlocProvider(
            create: (context) => BlocTaskList(),
          ),
        ],
        child: const TaskListPage(),
      ),
    );
  }
}
