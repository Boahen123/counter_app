import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

/// Counter Events
sealed class ThemeEvent {}

final class LightThemeEvent extends ThemeEvent {}

final class DarkThemeEvent extends ThemeEvent {}

/// Create a class for ThemeBloc
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  // Create a constructor to initialize the state
  ThemeBloc() : super(const ThemeState()) {
    
    // Call the on<event> method to listen to the events
    on<DarkThemeEvent>((event, emit) {
      // Copy the state object to update the state
      emit(state.copyWith(color: Colors.black));
    });
  }
}
