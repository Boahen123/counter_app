import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

/// Counter Events
sealed class CounterEvent {}
final class CounterIncrementEvent extends CounterEvent {}
final class CounterDecrementEvent extends CounterEvent {}

/// Create a class for Counter Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // Create a constructor to initialize the state
  CounterBloc() : super(CounterState()) {
    // Call the on<event> method to listen to the events
    on<CounterIncrementEvent>((event, emit) {
      // Copy the state object to update the state
      emit(state.copyWith(count: state.count + 1));
    });


    on<CounterDecrementEvent>((event, emit) {
      // Copy the state object to update the state
      emit(state.copyWith(count: state.count - 1));
    });
  }



}