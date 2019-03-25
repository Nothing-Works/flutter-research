import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CounterBlocState extends Equatable {
  CounterBlocState([List props = const []]) : super(props);
}

class InitialCounterBlocState extends CounterBlocState {
  final int counter;

  InitialCounterBlocState(this.counter) : super([counter]);

  @override
  String toString() => 'InitialCounterState $counter';
}
