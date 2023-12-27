import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, Color> {
  ThemeBloc() : super(Colors.white) {
    on<ThemeSwitched>((event, emit) {
      emit(event.isDark ? Colors.black : Colors.white);
    });
  }
}
