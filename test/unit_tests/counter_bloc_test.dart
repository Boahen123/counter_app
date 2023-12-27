import 'package:counter_app/business_logic/counter_bloc/counter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    tearDown(() {
      counterBloc = CounterBloc();
      counterBloc.close();
    });

    test('initial state of counter is 0', () {
      counterBloc = CounterBloc();
      expect(counterBloc.state.count, 0);
    });
  });

  group('CounterBloc', () {
    blocTest(
      'emits nothing when nothing is added',
      build: () => CounterBloc(),
      expect: () => [],
    );

    blocTest(
        'emits CounterState with count=1 when CounterIncrementPressed is added',
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(CounterIncrementEvent()),
        expect: () => [const CounterState(count: 1)]);

    blocTest(
        'emits CounterState with count=-1 when CounterDecrementPressed is added',
        build: () => CounterBloc(),
        act: (bloc) => bloc.add(CounterDecrementEvent()),
        expect: () => [const CounterState(count: -1)]);
  });
}
