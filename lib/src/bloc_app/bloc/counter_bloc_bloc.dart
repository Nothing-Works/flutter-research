import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  @override
  CounterBlocState get initialState => InitialCounterBlocState(0);

  @override
  Stream<CounterBlocState> mapEventToState(CounterBlocEvent event) async* {
    if (event is Increment) {
      yield InitialCounterBlocState(
          (currentState as InitialCounterBlocState).counter + 1);
    }
    if (event is Decrement) {
      yield InitialCounterBlocState(
          (currentState as InitialCounterBlocState).counter - 1);
    }
  }

  @override
  void onTransition(Transition<CounterBlocEvent, CounterBlocState> transition) {
    print(transition);
  }
}
