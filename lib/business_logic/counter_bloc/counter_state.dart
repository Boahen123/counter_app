// export the counter_state file
part of 'counter_bloc.dart';


/// Class for Counter State
class CounterState {
  // Create a variable to hold the state value
  int count;
  /// Create a constructor to initialize the state value along  with default/initial value
  CounterState({this.count = 0});

  /// Copy the state object to update the state
  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }

}
