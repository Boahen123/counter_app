// export the theme_state file
part of 'theme_bloc.dart';

/// Class for Counter State
class ThemeState extends Equatable {
  /// Create a variable to hold the state value
  final Color color;

  /// Create a constructor to initialize the state value along  with default/initial value
  const ThemeState({this.color = Colors.white});

  /// Copy the state object to update the state
  ThemeState copyWith({Color? color}) {
    return ThemeState(color: color ?? this.color);
  }

  /// Override the props to compare the state
  /// This is used to check if the state is same or not
  @override
  List<Object?> get props => [color];
}
