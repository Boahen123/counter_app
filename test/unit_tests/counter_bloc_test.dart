import 'package:counter_app/business_logic/counter_bloc/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    test('initial state of counter is 0', () {
      expect(CounterBloc().state, 0);
    });
  });
}