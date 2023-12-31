import 'package:counter_app/business_logic/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/counter_bloc/bloc/theme_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, Color>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(widget.title),
            actions: [
              Switch(
                  value: context.read<ThemeBloc>().state == Colors.black,
                  onChanged: (value) {
                    context.read<ThemeBloc>().add(ThemeSwitched(value));
                  }),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BlocBuilder<CounterBloc, CounterState>(
                  builder: (context, state) {
                    return Text(
                      '${state.count}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.remove,
                              semanticLabel: "SubtractButton"),
                          onPressed: () => context
                              .read<CounterBloc>()
                              .add(CounterDecrementEvent())),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue),
                      child: IconButton(
                        iconSize: 50,
                        icon: const Icon(Icons.add, semanticLabel: "AddButton"),
                        onPressed: () => context
                            .read<CounterBloc>()
                            .add(CounterIncrementEvent()),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
