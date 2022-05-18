import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:segunda_app/bloc/bloctasklist_bloc.dart';
import 'package:segunda_app/widgets/Task.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What To Do'),
      ),
      body: BlocBuilder<BlocTaskList, List<Task>>(
        builder: (context, state) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Progress'),
              LinearProgressIndicator(),
              Column(
                children: context.read<BlocTaskList>().state,
              )
            ],
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_rounded),
        onPressed: () => context
            .read<BlocTaskList>()
            .add(const AddNewToDo(taskLabel: 'new To Do')),
      ),
    );
  }
}
