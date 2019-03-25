import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CounterBlocEvent extends Equatable {
  CounterBlocEvent([List props = const []]) : super(props);
}

class Increment extends CounterBlocEvent {
  @override
  String toString() => 'Increment';
}

class Decrement extends CounterBlocEvent {
  @override
  String toString() => 'Decrement';
}
