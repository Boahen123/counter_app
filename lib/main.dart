import 'package:counter_app/business_logic/counter_bloc/counter_bloc.dart';
import 'package:counter_app/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/counter_bloc/theme_bloc/bloc/theme_bloc_bloc.dart';
import 'business_logic/counter_bloc/theme_bloc/bloc/theme_bloc_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ChangeThemeBloc(),
        ),
      ],
      child: BlocBuilder<ChangeThemeBloc, ChangeThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.changeTheme,
            home: const MyHomePage(title: 'Counter App using BLoC'),
          );
        },
      ),
    );
  }
}
