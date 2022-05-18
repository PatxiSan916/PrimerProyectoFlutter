import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:segunda_app/widgets/Task.dart';

part 'bloctasklist_event.dart';
part 'bloctasklist_state.dart';

class BlocTaskList extends Bloc<BlocTaskListEvent, List<Task>> {
  int nextId = 0;

  BlocTaskList()
      : super([
          Task(
            taskDescription: 'Make a To Do List',
            id: 0,
          )
        ]) {
    on<AddNewToDo>((event, emit) {
      nextId++;
      List<Task> newState = [...state];
      newState.add(Task(taskDescription: event.taskLabel, id: nextId));
      // BlocTaskListInitial newState = BlocTaskListInitial(taskList: newtaskList);
      emit(newState);
    });

    on<RemoveToDo>((event, emit) {
      List<Task> newState = [...state];
      List<Task> filteredState =
          newState.where((element) => element.id != event.id).toList();
      emit(filteredState);
    });

    on<ChangeToDoStatus>((event, emit) {
      List<Task> newState = [...state];
      Task taskToAlter =
          newState[newState.indexWhere((element) => element.id == event.id)];
      taskToAlter.isChecked = !taskToAlter.isChecked;
      emit(newState);
    });
  }
}
