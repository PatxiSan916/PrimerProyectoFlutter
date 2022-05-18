part of 'bloctasklist_bloc.dart';

abstract class BlocTaskListState extends Equatable {
  const BlocTaskListState();

  @override
  List<Object> get props => [];
}

class BlocTaskListInitial extends BlocTaskListState {
  final List<Task> taskList;

  BlocTaskListInitial({required this.taskList}) : super();

  List<Task> getTaskList() {
    print('Tasklist $taskList');
    return taskList;
  }

  List<Task> getTaskListWithNewTask({required String taskLabel, required id}) {
    List<Task> copyTaskList = [...taskList];
    copyTaskList.add(Task(taskDescription: taskLabel, id: id));
    return copyTaskList;
  }

  List<Task> getTaskListWithoutTask({required int taskId}) {
    List<Task> filteredTaskList =
        taskList.where((task) => task.id != taskId).toList();
    return filteredTaskList;
  }
}
