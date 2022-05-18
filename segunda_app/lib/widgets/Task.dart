import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:segunda_app/bloc/bloctasklist_bloc.dart';

class Task extends StatelessWidget {
  final String taskDescription;
  final int id;
  bool isChecked = false;

  Task({Key? key, required this.taskDescription, required this.id})
      : super(key: key);

  bool toggleIsChecked() {
    isChecked = !isChecked;
    return isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocTaskList, List<Task>>(
      builder: (context, state) {
        return Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (bool? checkBoxStatus) =>
                    context.read<BlocTaskList>().add(ChangeToDoStatus(id: id))),
            Text(taskDescription),
            IconButton(
                onPressed: () =>
                    context.read<BlocTaskList>().add(RemoveToDo(id: id)),
                icon: const Icon(Icons.cancel_rounded))
          ],
        );
      },
    );
  }
}
