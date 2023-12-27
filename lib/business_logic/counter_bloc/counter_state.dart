// export the counter_state file
part of 'counter_bloc.dart';


/// Class for Counter State
class CounterState extends Equatable {
  /// Create a variable to hold the state value
  final int count;
  /// Create a constructor to initialize the state value along  with default/initial value
  const CounterState({this.count = 0});

  /// Copy the state object to update the state
  CounterState copyWith({int? count}) {
    return CounterState(count: count ?? this.count);
  }

  /// Override the props to compare the state
  /// This is used to check if the state is same or not
  @override
  List<Object?> get props => [count];

}
