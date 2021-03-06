import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    final newState = state.copyWith(
      counter: state.counter + 1,
    );

    emit(newState);
  }

  void decrement() {
    final newState = state.copyWith(
      counter: state.counter - 1,
    );

    emit(newState);
  }
}
