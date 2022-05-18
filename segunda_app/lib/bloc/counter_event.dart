part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class incrementCounter extends CounterEvent {}

class decrementCounter extends CounterEvent {}
