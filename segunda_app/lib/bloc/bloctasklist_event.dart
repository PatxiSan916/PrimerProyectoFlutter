part of 'bloctasklist_bloc.dart';

abstract class BlocTaskListEvent extends Equatable {
  const BlocTaskListEvent();

  @override
  List<Object> get props => [];
}

class AddNewToDo extends BlocTaskListEvent {
  final String taskLabel;

  const AddNewToDo({required this.taskLabel}) : super();
}

class RemoveToDo extends BlocTaskListEvent {
  final int id;

  const RemoveToDo({required this.id}) : super();
}

class ChangeToDoStatus extends BlocTaskListEvent {
  final int id;

  const ChangeToDoStatus({required this.id}) : super();
}
